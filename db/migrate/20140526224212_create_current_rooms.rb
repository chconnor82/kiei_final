class CreateCurrentRooms < ActiveRecord::Migration
  def change
    create_table :current_rooms do |t|
      t.float :height
      t.float :Width
      t.text :room_type
      t.string :photo_image

      t.timestamps

    end
  end
end
