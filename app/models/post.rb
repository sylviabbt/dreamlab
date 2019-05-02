class Post < ApplicationRecord
  belongs_to :creator

  mount_uploader :main_image_upload, PhotoUploader
end
