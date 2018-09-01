class PlanGeneratorTmo
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
    lines = @quiz.user_lines
    plans = []

    customer_type.each do |plan|
      if plan.carrier_lines.count >= lines.count && lines.count >= plan.min_lines
        plans << plan
      end
    end
    plans
  end

  def soft_cap_sort
    lines = @quiz.user_lines
    soft_cap = 0
    plans = []

    lines.each do |line|
      if line.soft_cap > soft_cap
        soft_cap = line.soft_cap
      end
    end

    line_count_sort.each do |plan|
      if plan.soft_cap >= soft_cap
        plans << plan
      end
    end
    plans
  end

  def plan_hd_sort
    lines = @quiz.user_lines
    hd_video = false
    plans = []

    lines.each do |line|
      break if hd_video == true
      hd_video = line.hd_video
    end

    soft_cap_sort.each do |plan|
      unless hd_video == true && plan.hd_video == false
        plans << plan
      end
    end
  plans
  end

  def plan_hotspot_sort
    lines = @quiz.user_lines
    hotspot = 0
    plans = []

    lines.each do |line|
      if line.hotspot >= hotspot
        hotspot = line.hotspot
      end
    end

    plan_hd_sort.each do |plan|
      if plan.hotspot_lte >= hotspot
        plans << plan
      end
    end
    plans
  end

  def plan_sort_check
    lines = @quiz.user_lines
    plans = []

    plan_hotspot_sort.each do |sorted_plan|
      match_plans = []

      if sorted_plan.match_id == nil
        match_plans << sorted_plan
      elsif
        line_count_sort.each do |unsorted_plan|
          if sorted_plan.match_id == unsorted_plan.match_id && sorted_plan.match_id != nil
            match_plans << unsorted_plan
          end
        end
      end
      plans << match_plans
    end
    plans.uniq!
    plans
  end

  def line_sorter
    plan = []

    plan_sort_check.each do |plans|
      hd_video = line_hd_video(plans)
      hotspot = line_hotspot(hd_video)
      plan << hotspot
    end
    plan
  end

  def line_calculation
    price = 0
    final_plan = nil

    line_sorter.each do |lines|
      if plan_total(lines) <= price || price == 0
        price = plan_total(lines)
        final_plan = lines
      end
    end
    final_plan
  end

  def line_pricing
    line_prices = []

    line_calculation.each.with_index do |plan, index|
      line_prices << plan.carrier_lines[index]
    end
    line_prices  
  end

  def plan_total(plan)
    total = 0
    plan.each.with_index do |line, index|
      total += line.carrier_lines[index].price
    end
    total
  end

  def final_plan_total
    plan_total(line_calculation) + taxes
  end

  def taxes
    if line_calculation.first.plan_type == 'T-Mobile Essentials'
      @quiz.user_lines.count * 5
    else
      0
    end
  end

  def tax_value
    if taxes == 0
      'Taxes Included with plan'
    else
      "$#{taxes}"
    end
  end

  def line_hd_video(plans)
    user_lines = @quiz.user_lines
    plan_lines = []
    
    user_lines.each do |user_line|
      temp_plans = []

      plans.each do |plan|
        unless user_line.hd_video == true && plan.hd_video == false
          temp_plans << plan
        end
      end
      plan_lines << temp_plans
    end

    plan_lines
  end

  def line_hotspot(plan_set)
    user_lines = @quiz.user_lines
    plan_lines = []    

    plan_set.each.with_index do |plans, index|
      temp_plans = []
      plans.each do |plan|
        if plan.hotspot_lte >= user_lines[index].hotspot 
          temp_plans << plan
        end
      end
      plan_lines << temp_plans.first
    end
    plan_lines
  end
end