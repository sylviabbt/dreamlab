class Collaboration < ApplicationRecord
  belongs_to :creator
  belongs_to :drawing
end
