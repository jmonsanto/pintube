class Api::V1::BoardsController < ApplicationController
  respond_to :json

  def show
    respond_with Board.find(params[:id])
  end
end
