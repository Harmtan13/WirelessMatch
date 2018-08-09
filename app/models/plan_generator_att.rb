class PlanGeneratorAtt
  attr_accessor :carrier, :plans, :quiz

  def initialize(carrier, plans, quiz)
    @carrier = carrier
    @plans = plans
    @quiz = quiz
    @unlimited_data = Float::INFINITY
  end

  def customer_type
    consumer_plans = @plans.where(
      senior_pricing:false, 
      military_pricing:false
      )

    senior_plans = @plans.where(
      senior_pricing: true
      )

    military_plans = @plans.where(
      military_pricing: true
      )

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

  def data_sort
    plans = []
    data = total_data

    customer_type.each do |plan|
      if data <= plan.data_amount
        plans << plan
      end
    end
    plans
  end

  def hotspot_sort
    plans = []

    bucket_hotspot_sort.each do |plan|
      plans << plan
    end

    unlimited_hotspot_sort.each do |plan|
      plans << plan
    end
    plans
  end

  def hd_video_sort
    plans = []
    @quiz.user_lines.each do |line|
      hotspot_sort.each do |plan|
        if line.hd_video == true && plan.hd_video == true
          plans << plan
        end
      end
    end
    plans.uniq
  end

  def line_count_sort
    plans = []
 
      hd_video_sort.each do |plan|
        if @quiz.user_lines.count <= plan.carrier_lines.count
          plans << plan
        end
      end

    plans
  end

  def plan_calculations
    final_plan = ''
    price = 0

    line_count_sort.each do |plan|
      if plan_total(plan) <= price || price == 0
        final_plan = plan
        price = plan_total(plan)
      end
      final_plan
    end

    final_plan
  end

  def plan_total(plan)
    line_count = @quiz.user_lines.count
    price = plan.data_price

    line_count.times do |line|
      price += plan.carrier_lines[line].price
    end
    price
  end



  # Unlimited Plans
  def unlimited_hotspot_sort
    plans = []

      @quiz.user_lines.each do |line|
        data_sort.each do |plan|
          if line.hotspot <= plan.hotspot_lte && plan.data_amount == @unlimited_data
            plans << plan
          end
        end
      end
    plans.uniq
  end

  # Bucket Plans
  def bucket_hotspot_sort
    plans = []
    hotspot = @quiz.user_lines.sum(:hotspot)

    data_sort.each do |plan|
      if hotspot <= plan.hotspot_lte && plan.data_amount < @unlimited_data
        plans << plan
      end
    end
    plans
  end
  
end