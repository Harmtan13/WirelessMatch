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
      military_pricing: false
      )

    military_plans = @plans.where(
      senior_pricing: false
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
    bucket_plan = @quiz.user_lines.sum(:data_amount)
  end

  def plan_calculation
    bucket_plan = bucket_plan_calculation
    plan = ''


    if bucket_hotspot_sort == []
      unlimited_hd_video
    else
      if bucket_plan_total(bucket_plan) >= unlimited_plan_total
        unlimited_hd_video
      else
        bucket_plan_calculation
      end
    end
  end

  def line_pricing
    if plan_calculation == unlimited_hd_video
      unlimited_line_pricing
    elsif plan_calculation == bucket_plan_calculation
      bucket_line_pricing
    end
  end

  def plan_total
    if plan_calculation == unlimited_hd_video
      unlimited_plan_total
    elsif plan_calculation == bucket_plan_calculation
      bucket_plan_total(bucket_plan_calculation)
    end
  end

  def plan_name
    if plan_calculation == unlimited_hd_video
      unlimited_hd_video.first.plan_type
    elsif plan_calculation == bucket_plan_calculation
      plan_calculation.name
    end
  end

  def data_price
    if plan_calculation == bucket_plan_calculation
      bucket_plan_calculation.data_price
    end
  end

# Bucket Plans
  def bucket_plans
    customer_type.where(data_amount:0...1000)
  end

  def bucket_plan_sort
    plans = []

    bucket_plans.each do |plan|
      if plan.data_amount >= total_data
        plans << plan
      end
    end
    plans.uniq
  end

  def bucket_hd_video_sort
    plans = []
    hd_video = false

    @quiz.user_lines.each do |line|
      break if hd_video == true
      hd_video = line.hd_video
    end

    bucket_plan_sort.each do |plan|
      if hd_video == true && plan.hd_video == true
        plans << plan
      elsif hd_video == false 
        plans << plan
      end
    end

    plans.uniq
  end

  def bucket_hotspot_sort
    plans = []
    hotspot = @quiz.user_lines.sum(:hotspot)

    bucket_hd_video_sort.each do |plan|
      if plan.hotspot_lte >= hotspot
        plans << plan
      end
    end

    plans.uniq
  end

  def bucket_plan_total(plan)
    line_count = @quiz.user_lines.count
    price = plan.data_price

    line_count.times do |line|
      price += plan.carrier_lines[line].price
    end
    price
  end

  def line_count_sort
    plans = []
 
    bucket_hotspot_sort.each do |plan|
      if @quiz.user_lines.count <= plan.carrier_lines.count
        plans << plan
      end
    end

    plans
  end

  def bucket_plan_calculation
    final_plan = ''
    price = 0

    line_count_sort.each do |plan|
      if bucket_plan_total(plan) <= price || price == 0
        final_plan = plan
        price = bucket_plan_total(plan)
      end
      final_plan
    end

    final_plan
  end

  def bucket_line_pricing
    line_count = @quiz.user_lines.count
    plan = plan_calculation
    lines = []

    line_count.times do |count|
      lines << plan.carrier_lines[count]
    end

    lines
  end

# Unlimited Plans
  def unlimited_plans
    customer_type.where(data_amount: @unlimited_data)
  end

  def unlimited_hotspot
    lines = @quiz.user_lines
    plans = []

    lines.each do |line|
      temp_plans = []

      unlimited_plans.each do |plan|
        if line.hotspot <= plan.hotspot_lte
          temp_plans << plan
        end
      end
      plans << temp_plans
    end

    plans
  end
  
  def unlimited_hd_video
    lines = @quiz.user_lines
    plans = []

    lines.each.with_index do |line, index|
      temp_plans = []
      unlimited_hotspot[index].each do |plan|
        if plan.hd_video == line.hd_video || plan.hotspot_lte > line.hotspot
          temp_plans << plan
        end
      end
      plans << temp_plans.first
    end
    plans
  end

  def unlimited_line_pricing
    line_count = @quiz.user_lines.count - 1
    plans = unlimited_hd_video
    price = []

    plans.each do |plan|
      price << plan.carrier_lines[line_count]
    end
    price
  end

  def unlimited_plan_total
    price = 0

    unlimited_line_pricing.each do |line|
      price += line.price
    end

    price
  end

  def unlimited_plan_name
    if plan_calculation == unlimited_hd_video
      unlimited_hd_video
    end
  end
end