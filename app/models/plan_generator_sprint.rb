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

  def line_count_sort
    plans = []

    customer_type.each do |plan|
      if @quiz.user_lines.count >= plan.min_lines && plan.carrier_lines.count >= @quiz.user_lines.count
        plans << plan
      end
    end
    plans
  end

  def hightest_line_data
    data = 0

    @quiz.user_lines.each do |line|
      if line.data_amount > data || data == 0
        data = line.data_amount
      end
    end
    data
  end

  def data_sort
    plans = []

    line_count_sort.each do |plan|
      if plan.data_amount >= hightest_line_data
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

    data_sort.each do |plan|
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

  def plan_calculation
    final_plan = nil
    price = 0

    hotspot_sort.each do |plan|
      if plan_total(plan) <= price || price == 0
        final_plan = plan
        price = plan_total(plan)
      end
    end
    final_plan
  end

  def plan_total(plan)
    line_count = @quiz.user_lines.count
    total = 0

    line_count.times do |line|
      total += plan.carrier_lines[line].price
    end
    total
  end

  def line_pricing
    line_count = @quiz.user_lines.count
    lines = []

    line_count.times do |index|
      lines << plan_calculation.carrier_lines[index]
    end
    lines
  end

  def final_price
    plan_total(plan_calculation) + taxes
  end

  def taxes
    taxes = @quiz.user_lines.count * 5
  end
end