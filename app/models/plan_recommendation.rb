class PlanRecommendation
  attr_accessor :carriers, :quiz

  def initialize(carriers, quiz)
    @carriers = carriers
    @quiz = quiz
  end

  def total_user_data
    @quiz.user_lines.sum(:data_amount)
  end

  def qualified_plans
    plans = []
    @carriers.each do |carrier| 
      carrier.carrier_plans.each do |plan|
        if plan.data_amount >= total_user_data
          plans << plan.name
        end
      end
    end
    plans
  end

end