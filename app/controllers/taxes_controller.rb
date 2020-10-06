class TaxesController < ApplicationController
  def index
  end

  def new
    @tax = Tax.new
  end

  def create
    @tax = Tax.new(tax_params)
    if @tax.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tax_params

    params.require(:tax).permit(:health_insurance_premium_id, :health_insurance_premium_price, :pension_id, :pension_price, :resident_tax_id, :resident_tax_price, :income_tax_id, :income_tax_price, :other_taxes)
  end

end
