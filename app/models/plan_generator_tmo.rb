class PlanGeneratorTmo
  attr_accessor :carriers, :quiz

  def initialize(carriers, quiz)
    @carriers = carriers
    @quiz = quiz
  end

  def total_user_data
    @quiz.user_lines.sum(:data_amount)
  end

end