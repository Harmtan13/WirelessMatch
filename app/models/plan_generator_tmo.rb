class PlanGeneratorTmo
  attr_accessor :carrier, :plans, :quiz

  def initialize(carrier, plans, quiz)
    @carrier = carrier
    @plans = plans
    @quiz = quiz
  end

  def consumer_mix_plans
    @plans.where(mix_and_match: true,
                 senior_pricing: false,
                 military_pricing: false
      )
  end

  def consumer_set_plans
    @plans.where(mix_and_match: false,
                 senior_pricing: false,
                 military_pricing: false
      )
  end

  def senior_mix_plans
    @plans.where(mix_and_match: true,
      military_pricing: false
    )
  end

  def senior_set_plans
    @plans.where(mix_and_match: false,
                 military_pricing: false
    )
  end

  def military_mix_plans
    @plans.where(mix_and_match: true,
      senior_pricing: false,
    )
  end

  def military_set_plans
    @plans.where(mix_and_match: false,
                 senior_pricing: false,
    )
  end

end