class AddSessionIdToModels < ActiveRecord::Migration
  def change

    add_column :room_preferences, :session_id, :integer
    add_column :current_rooms, :session_id, :integer
    add_column :users, :session_id, :integer
  end
end
