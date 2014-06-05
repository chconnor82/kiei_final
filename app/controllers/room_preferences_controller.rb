class RoomPreferencesController < ApplicationController
  def index
    @room_preferences = RoomPreference.all
  end

  def show
    @room_preference = RoomPreference.find(params[:id])
  end

  def new
    @room_preference = RoomPreference.new
    # @room_preference.room_photo_id = params[:room_photo_id]
  end

  def create
    @room_preference = RoomPreference.new
    @room_preference.room_photo_id = params[:room_photo_id]
    @room_preference.integer = params[:integer]
    # @room_preference.user_name = params[:username]
    @room_preference.integer = params[:integer]
    @room_preference.photo = params[:photo]

    if @room_preference.save
      redirect_to "/current_rooms/new", :notice => "That would have been my choice as well....."
    else
      render 'new'
    end
  end

  def edit
    @room_preference = RoomPreference.find(params[:id])
  end

  def update
    @room_preference = RoomPreference.find(params[:id])

    @room_preference.room_photo_id = params[:room_photo_id]
    @room_preference.integer = params[:integer]
    @room_preference.user_id = params[:user_id]
    @room_preference.integer = params[:integer]

    if @room_preference.save
      redirect_to "/room_preferences", :notice => "Room preference updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @room_preference = RoomPreference.find(params[:id])

    @room_preference.destroy

    redirect_to "/room_preferences", :notice => "Room preference deleted."
  end
end
