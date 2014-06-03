class RoomPreference < ActiveRecord::Base

belongs_to :user

# validates :room_photo_id, :presence => true

end
