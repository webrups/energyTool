class Admin::RoomsController < ApplicationController
  before_action :authenticate_admin!

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)

   if @room.save
      redirect_to admin_rooms_path
   else
     render action: 'new'
   end
  end

  def edit
    @room.find(params[:id])
  end

  def update
    @room = room.find(params[:id])

    if @room.update_attributes(room_params)
      redirect_to admin_room_path
    else
      render action: 'edit'
    end
  end

  def delete
    room.find(params[:id]).destroy
    redirect_to admin_rooms_path
  end

  private

  def room_params
    params.require(:room).permit(:title, :id, :company_id)
  end


end
