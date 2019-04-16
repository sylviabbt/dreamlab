class Kid < User
  has_many :drawings
  has_many :collaborations, through: :drawings

  mount_uploader :avatar, PhotoUploader


  acts_as_voter

  acts_as_taggable
  acts_as_taggable_on :favourite_things, :dislikes
end
