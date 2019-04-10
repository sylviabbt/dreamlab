class Drawing < ApplicationRecord
  belongs_to :kid

  mount_uploader :image, PhotoUploader

  # validates :image_url, presence: true
end
