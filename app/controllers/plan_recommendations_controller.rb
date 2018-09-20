class PlanRecommendationsController < ApplicationController

  def index
    @quiz = UserPlan.where(guest_id: session[:guest_user_id]).last
    session[:form_id] = @quiz.id

    @tmo = Carrier.find_by_name('T-Mobile')
    @verizon = Carrier.find_by_name('Verizon')
    @att = Carrier.find_by_name('AT&T')
    @sprint = Carrier.find_by_name('Sprint')

    @tmo_carrier_plans = @tmo.carrier_plans
    @verizon_carrier_plans = @verizon.carrier_plans
    @att_carrier_plans = @att.carrier_plans
    @sprint_carrier_plans = @sprint.carrier_plans

    @t = PlanGeneratorTmo.new(@tmo, @tmo_carrier_plans, @quiz)
    @v = PlanGeneratorVerizon.new(@verizon, @verizon_carrier_plans, @quiz)
    @a = PlanGeneratorAtt.new(@att, @att_carrier_plans, @quiz)
    @s = PlanGeneratorSprint.new(@sprint, @sprint_carrier_plans, @quiz)
  end

  def admin
    @quiz = UserPlan.last

    @tmo = Carrier.find_by_name('T-Mobile')
    @verizon = Carrier.find_by_name('Verizon')
    @att = Carrier.find_by_name('AT&T')
    @sprint = Carrier.find_by_name('Sprint')

    @tmo_carrier_plans = @tmo.carrier_plans
    @verizon_carrier_plans = @verizon.carrier_plans
    @att_carrier_plans = @att.carrier_plans
    @sprint_carrier_plans = @sprint.carrier_plans

    @t = PlanGeneratorTmo.new(@tmo, @tmo_carrier_plans, @quiz)
    @v = PlanGeneratorVerizon.new(@verizon, @verizon_carrier_plans, @quiz)
    @a = PlanGeneratorAtt.new(@att, @att_carrier_plans, @quiz)
    @s = PlanGeneratorSprint.new(@sprint, @sprint_carrier_plans, @quiz)
  end

end