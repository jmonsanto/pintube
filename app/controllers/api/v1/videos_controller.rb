class Api::V1::VideosController < ApplicationController
  respond_to :json

  def show
    respond_with Video.find(params[:id])
  end

  def index
    respond_with Video.all
  end
end
