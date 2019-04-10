class Drawing < ApplicationRecord
  belongs_to :kid

  validates :image_url, presence: true
end
