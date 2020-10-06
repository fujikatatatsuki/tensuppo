class CarCostsController < ApplicationController
  def index
  end

  def new
    @car_cost = Car_Cost.new
  end

  def create
    @car_cost = Car_Cost.new(car_cost_params)
    if @car_cost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def car_cost_params

    params.require(:car_cost).permit(:car_ownership_id, :loan_monthly_payment, :parking_cost, :water_cost, :fuel_cost, :vehicle_inspection_fee, :car_tax, :other_cars)
  end
end
