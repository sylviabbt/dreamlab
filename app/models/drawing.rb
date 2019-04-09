class Drawing < ApplicationRecord
  belongs_to :kids

  validates :image_url, presence: true
end
