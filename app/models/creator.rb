class Creator < User
  has_many :collaborations
  has_many :posts

  mount_uploader :avatar, PhotoUploader

  acts_as_voter

  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :city, presence: true
end
