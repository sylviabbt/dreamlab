class Creator < User
  has_many :collaborations
  mount_uploader :avatar, PhotoUploader
end
