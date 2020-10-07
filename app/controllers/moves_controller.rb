class MovesController < ApplicationController
  def index
  end

  def new
    @move = Move.new
  end

  def create
    @move = Move.new(move_params)
    if @move.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def move_params

    params.require(:move).permit(:whether_to_move_id, :moving_cost, :rent, :security_deposit, :key_money, :administrative_fee, :other_moves)
  end
end
