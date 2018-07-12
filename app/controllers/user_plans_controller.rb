class UserPlansController < ApplicationController
  def new
    @plan = UserPlan.new

    10.times { @plan.user_lines.build }
  end

  def create
    @carrier = Carrier.new(carrier_params)

    respond_to do |format|
      if @carrier.save
        format.html { redirect_to carriers_path, notice: 'New Carrier has been created!'}
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @carrier.update(carrier_params)
        format.html {redirect_to carriers_path, notice: 'Carrier has been updated!'}
      else
        format.html {render :edit}
      end
    end
  end
end
