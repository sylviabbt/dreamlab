class Post < ApplicationRecord
  belongs_to :creator

  mount_uploader :main_image_upload, PhotoUploader
  mount_uploader :second_image_upload, PhotoUploader
  mount_uploader :third_image_upload, PhotoUploader
end
