class Creator < User
  has_many :collaborations
  has_many :posts

  mount_uploader :avatar, PhotoUploader

  acts_as_voter
end
