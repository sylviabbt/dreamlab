class Drawing < ApplicationRecord
  belongs_to :kid
  has_one :collaboration

  mount_uploader :image, PhotoUploader

  # validates :image_url, presence: true
  def booked?
    collaboration.present?
  end
end
