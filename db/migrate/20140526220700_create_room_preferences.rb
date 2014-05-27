class CreateRoomPreferences < ActiveRecord::Migration
  def change
    create_table :room_preferences do |t|
      t.string :room_photo_id
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps

    end
  end
end
