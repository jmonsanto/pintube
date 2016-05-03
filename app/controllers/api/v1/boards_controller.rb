class Api::V1::BoardsController < ApplicationController
  respond_to :json

  def show
    respond_with Board.find(params[:id])
  end

  def create
    board = Board.new(board_params)

    if board.save
      render json: board, status: 201, location: [:api, board]
    else
      render json: { errors: board.errors }, status: 422
    end
  end

  private

  def board_params
    params.require(:board).permit(:name, :description)
  end
end
