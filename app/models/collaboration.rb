class Collaboration < ApplicationRecord
  belongs_to :creators
  belongs_to :drawing
end
