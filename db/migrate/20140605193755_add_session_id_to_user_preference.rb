class AddSessionIdToUserPreference < ActiveRecord::Migration
  def change
    add_column :user_preferences, :session_id, :integer
  end
end
