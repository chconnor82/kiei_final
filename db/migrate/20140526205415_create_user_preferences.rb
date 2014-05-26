class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.string :image_url
      t.text :caption
      t.string :user_preference_boolean

      t.timestamps

    end
  end
end
