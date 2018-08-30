class PlanGeneratorSprint
  attr_accessor :carrier, :plans, :quiz

  def initialize(carrier, plans, quiz)
    @carrier = carrier
    @plans = plans
    @quiz = quiz
  end

  def customer_type
    consumer_plans = @plans.where(
      senior_pricing: false,
      military_pricing: false
    )

    senior_plans = @plans.where(military_pricing: false)

    military_plans = @plans.where(senior_pricing: false)

    if @quiz.senior_pricing?
      senior_plans
    elsif @quiz.military_pricing?
      military_plans
    else
      consumer_plans
    end
  end

  def total_data
    @quiz.user_lines.sum(:data_amount)
  end

  def total_data_sort
    plans = []

    customer_type.each do |plan|
      if plan.data_amount >= total_data
        plans << plan
      end
    end
    plans
  end

  def hd_sort
    plans = []
    hd_video = false

    @quiz.user_lines.each do |line|
      break if hd_video == true
      hd_video = line.hd_video
    end

    total_data_sort.each do |plan|
      if hd_video == true && plan.hd_video == true
        plans << plan
      elsif hd_video == false 
        plans << plan
      end
    end
    plans
  end

  def hotspot_sort
    plans = []
    hotspot = 0

    @quiz.user_lines.each do |line|
      if line.hotspot > hotspot || hotspot == 0
        hotspot = line.hotspot
      end
    end

    hd_sort.each do |plan|
      if plan.hotspot_lte >= hotspot
        plans << plan
      end
    end 
    plans
  end
end