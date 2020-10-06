class TuitionsController < ApplicationController
  def index
  end

  def new
    @tuition = Tuition.new
  end

  def create
    @tuition = Tuition.new(tuition_params)
    if @tuition.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def tuition_params

    params.require(:tuition).permit(:necessity_of_attending_school_id, :admission_cost, :monthly_tuition, :other_tuitions)
  end
end
