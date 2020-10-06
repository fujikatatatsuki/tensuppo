class UtilityCostsController < ApplicationController
  def index
  end

  def new
    @utility_cost = UtilityCost.new
  end

  def create
    @utility_cost = UtilityCost.new(utility_cost_params)
    if @utility_cost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def utility_cost_params

    params.require(:utility_cost).permit(:payment_of_utility_bill_id, :electricity_charges, :gas_charges, :water_charges, :other_utility_costs)
  end
end
