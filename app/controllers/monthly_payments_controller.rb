class MonthlyPaymentsController < ApplicationController
  def index
  end

  def new
    @monthly_payment = MonthlyPayment.new
  end

  def create
    @monthly_payment = MonthlyPayment.new(monthly_payment_params)
    if @monthly_payment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def monthly_payment_params

    params.require(:monthly_payment).permit(:traffic_cost, :phone_cost, :other_communication_costs, :scholarship, :other_monthly_payment)
  end
end
