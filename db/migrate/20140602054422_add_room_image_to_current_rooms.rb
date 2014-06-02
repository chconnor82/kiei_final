class AddRoomImageToCurrentRooms < ActiveRecord::Migration
  def change
    add_column(:current_rooms, :room_image, :string)
  end
end
