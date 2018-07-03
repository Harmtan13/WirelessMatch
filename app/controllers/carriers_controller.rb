class CarriersController < ApplicationController
  before_action :set_carrier, only: [:edit, :update, :show, :destroy]

  def index
    @carriers = Carrier.all
  end

  def new
    @carrier = Carrier.new
    3.times { @carrier.carrier_plans.build }
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

  def show
    @plans = @carrier.carrier_plans
  end

  def destroy
    @carrier.destroy
    respond_to do |format|
      format.html { redirect_to carriers_path, notice: 'Carrier has been deleted'}
    end
  end


  def set_carrier
    @carrier = Carrier.find(params[:id])
  end

  def carrier_params
    params.require(:carrier).permit(
      :name,
      carrier_plans_attributes: [:name, :data_amount, :data_price]
      )
  end
end
