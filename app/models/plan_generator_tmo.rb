class PlanGeneratorTmo
  attr_accessor :carrier, :plans, :quiz

  def initialize(carrier, plans, quiz)
    @carrier = carrier
    @plans = plans
    @quiz = quiz
  end

  def senior_plans
    @plans.where(senior_pricing: true)
  end

  def military_plans
    @plans.where(military_pricing: true)
  end

  def unlimited_plans
    @plans.where(data_amount: Float::INFINITY, senior_pricing:false, military_pricing:false)
  end

  def qualified_plans
    if @quiz.senior_pricing?
      senior_plans
    elsif @quiz.military_pricing?
      military_plans
    else
      unlimited_plans
    end
  end

  def hotspot
    lines = @quiz.user_lines
    plans = []

    lines.each do |line|
      temp_plans = []

      qualified_plans.each do |plan|
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
end