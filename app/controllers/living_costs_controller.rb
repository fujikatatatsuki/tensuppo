class LivingCostsController < ApplicationController
  def index
  end

  def new
    @living_cost = Living_Cost.new
  end

  def create
    @living_cost = Living_Cost.new(living_cost_params)
    if @living_cost.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def living_cost_params

    params.require(:living_cost).permit(:food_cost, :expendables_cost, :medical_cost, :other_life_costs)
  end

end
