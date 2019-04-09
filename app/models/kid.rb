class Kid < User
  has_many :drawings
  has_many :collaborations, through: :drawings
end
