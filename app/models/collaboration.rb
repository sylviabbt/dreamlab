class Collaboration < ApplicationRecord
  belongs_to :drawings
  belongs_to :creators
end
