class Collaboration < ApplicationRecord
  belongs_to :creator
  belongs_to :drawing
  after_create :create_notifications
  after_update :finish_notifications
  mount_uploader :collab_upload, PhotoUploader

  def create_notifications
    # WHAT DO YOU NEED TO MAKE A NOTIFICATION?
    # :kid_id, :creator_id, :content, :receiver
    Notification.create(creator_id: creator_id, kid_id: drawings.kid_id, content: "You've been matched with a kid!", receiver: "creator")
    Notification.create(creator_id: creator_id, kid_id: drawings.kid_id, content: "You've been matched with an artist!", receiver: "kid")
  end

  def finish_notifications
    # WHAT CONDITION should this be created on??
    if collab_upload.image.present?
      Notification.create(kid_id: drawings.kid_id, creator_id: creator_id,  content: "Your artist has finished the collaboration!", receiver: "kid")
    end
  end
end
