class PlanRecommendationsController < ApplicationController

  def index
    @carriers = Carrier.all
    @quiz = UserPlan.first
    @tmo_plan = PlanGeneratorTmo.new(@carriers, @quiz)
    @verizon_plan = PlanGeneratorVerizon.new(@carriers, @quiz)
    @att_plan = PlanGeneratorAtt.new(@carriers, @quiz)
    @sprint_plan = PlanGeneratorSprint.new(@carriers, @quiz)
  end

end