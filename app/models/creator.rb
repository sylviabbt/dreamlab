class Creator < User
  has_many :collaborations

  mount_uploader :avatar, PhotoUploader

  acts_as_voter
end
