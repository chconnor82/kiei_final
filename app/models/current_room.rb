class CurrentRoom < ActiveRecord::Base

  belongs_to :user

  # validates :user_id, :presence => true

  mount_uploader :room_image, RoomImageUploader

end
