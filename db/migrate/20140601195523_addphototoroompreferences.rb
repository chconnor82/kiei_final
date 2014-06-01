class Addphototoroompreferences < ActiveRecord::Migration
  def change
    add_column(:room_preferences, :photo, :integer)

  end
end
