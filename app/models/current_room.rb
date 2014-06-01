class CurrentRoom < ActiveRecord::Base

  belongs_to :user

  mount_uploader :room_image, RoomImageUploader

end
