class PlanGeneratorVerizon
  attr_accessor :carrier, :plans, :quiz, :unlimited_data

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

  def sort_plans
    unlimited_plans = customer_type.where(data_amount: @unlimited_data)
    bucket_plans = customer_type.where(data_amount: 0..100)

    if total_data == @unlimited_data || total_data > bucket_plans.last.data_amount
      unlimited_plans
    else
      bucket_plans
    end
  end

  def price_generator
    if sort_plans.first.data_amount != @unlimited_data
      bucket_line_pricing
    else
      unlimited_line_pricing
    end
  end

  def bucket_line_pricing
    line_count = @quiz.user_lines.count
    plan = bucket_plan_sorter
    price = []

      line_count.times do |line|
        price << plan.carrier_lines[line]
      end
    price
  end

  def bucket_plan_sorter
    plans = sort_plans
    available_plans = []

    plans.each do |plan|
      if total_data <= plan.data_amount && @quiz.user_lines.count <= plan.carrier_lines.count
        available_plans << plan
      end
    end
    available_plans.first
  end

  def unlimited_line_pricing
    plans = hd_video
    price = []

    plans.each.with_index do |plan, index|
      price << plan.carrier_lines[index]
    end
    price
  end

  def hotspot
    lines = @quiz.user_lines
    plans = []

    lines.each do |line|
      temp_plans = []

      sort_plans.each do |plan|
        if line.hotspot <= plan.hotspot_lte
          temp_plans << plan
        end
      end
      plans << temp_plans
    end

    plans
  end

  def hd_video
    lines = @quiz.user_lines
    plans = []

    lines.each.with_index do |line, index|
      temp_plans = []
      hotspot[index].each do |plan|
        if plan.hd_video == line.hd_video || plan.hotspot_lte > line.hotspot
          temp_plans << plan
        end
      end
      plans << temp_plans.first
    end
    plans
  end

  def plan_name
    if sort_plans.first.data_amount == @unlimited_data
      "Mix & Match Unlimited"
    else
      bucket_plan_sorter.name
    end
  end

  def total_price
    if sort_plans.first.data_amount == @unlimited_data
      unlimited_price_total
    else
      bucket_price_total
    end
  end

  def unlimited_price_total
    total_price = 0

    unlimited_line_pricing.each do |line|
      total_price += line.price
    end
    total_price
  end

  def bucket_price_total
    total_price = bucket_plan_sorter.data_price

    bucket_line_pricing.each do |line|
      total_price += line.price
    end
    total_price
  end
end