class Collaboration < ApplicationRecord
  belongs_to :creator
  belongs_to :drawing

  mount_uploader :image_url, PhotoUploader
end
