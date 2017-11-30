class Admin::LightsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @lights = Light.all
  end

  def show
    @light = Light.find(params[:id])
  end

  def new
    @light = Light.new
    @rooms = Room.all
  end

  def create
    @light = Light.new(light_params)

   if @light.save
      redirect_to admin_lights_path
   else
     render action: 'new'
   end
  end

  def edit
    @light.find(params[:id])
  end

  def update
    @light = Light.find(params[:id])

    if @light.update_attributes(light_params)
      redirect_to admin_light_path
    else
      render action: 'edit'
    end
  end

  def delete
    Light.find(params[:id]).destroy
    redirect_to admin_lights_path
  end

  private

  def light_params
    params.require(:light).permit(:title, :id, :status, :room_id)
  end

end
