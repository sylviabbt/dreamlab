class Collaboration < ApplicationRecord
  belongs_to :creator
  belongs_to :drawing

  mount_uploader :collab_upload, PhotoUploader
end
