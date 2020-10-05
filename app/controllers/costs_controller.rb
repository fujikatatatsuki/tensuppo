class CostsController < ApplicationController
  def index
  end

  def new
    @cost = Cost.new
  end

  def create
    @cost = Cost.new(cost_params)
    if @cost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def cost_params

    params.require(:cost).permit(:health_insurance_premium_id, :health_insurance_premium_price, :pension_id, :pension_price, :resident_tax_id, :resident_tax_price, :income_tax_id, :income_tax_price, :other_taxes, :food_cost, :expendables_cost, :medical_cost, :other_life_costs, :whether_to_move_id, :moving_cost, :rent, :security_deposit, :key_money, :administrative_fee, :other_moves, :payment_of_utility_bill_id, :electricity_charges, :gas_charges, :water_charges, :other_utility_costs, :car_ownership_id, :loan_monthly_payment, :parking_cost, :water_cost, :fuel_cost, :vehicle_inspection_fee, :car_tax, :other_cars, :traffic_cost, :phone_cost, :other_communication_costs, :scholarship, :other_monthly_payment, :necessity_of_attending_school_id, :admission_cost, :monthly_tuition, :other_tuitions)
  end

end