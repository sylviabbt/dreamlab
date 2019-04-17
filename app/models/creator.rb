class Creator < User
  has_many :collaborations
  mount_uploader :avatar, PhotoUploader


  def notifications
    Notification.where()
  end

end


# current_user.notifications.each do |note|
#  note.content
# end
