class PlanRecommendationsController < ApplicationController

  def index
    @carriers = Carrier.all
    @quiz = UserPlan.last
    @plan = PlanRecommendation.new(@carriers, @quiz)
  end

end