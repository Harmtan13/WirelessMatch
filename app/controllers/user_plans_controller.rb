class UserPlansController < ApplicationController
  before_action :set_plan, only: [:edit, :update, :show, :destroy]

  def index
   redirect_to new_user_plan_path
  end
  
  def new
    @plan = UserPlan.new

    @plan.user_lines.build
  end

  def create
    @plan = UserPlan.new(user_params)
    session[:guest_user_id] = "guest-#{SecureRandom.hex(6)}"
    @plan.guest_id = session[:guest_user_id]

    respond_to do |format|
      if @plan.save
        format.html { redirect_to plan_recommendations_path, notice: 'New Carrier has been created!'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def show
    redirect_to edit_user_plan_path(session[:form_id])
  end

  def update
    respond_to do |format|
      if @plan.update(user_params)
        format.html {redirect_to plan_recommendations_path, notice: 'Carrier has been updated!'}
      else
        format.html {render :edit}
      end
    end
  end

  def results
    @quiz = @quiz = UserPlan.where(guest_id: session[:guest_user_id]).last
  end

  def user_params
    params.require(:user_plan).permit(
      :id,
      :line_quantity, 
      :auto_pay, 
      :senior_pricing,
      :military_pricing,
      user_lines_attributes: [
        :id,
        :data_amount,
        :hotspot,
        :hd_video,
        :_destroy
        ]
      )
  end

  def set_plan
    @plan = UserPlan.find(params[:id])
  end
end
