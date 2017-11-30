class Api::V1::LightsController < ApplicationController
  respond_to :json
  swagger_controller :lights, "lights controller"

  swagger_api :index do
    summary "Fetches all Light items"
    notes ""
  end

  def index
    @lights = Light.all
    render json: @lights, status: :ok
  end

end
