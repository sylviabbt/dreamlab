# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def matched
    user = User.first
    UserMailer.matched(user)
  end

  def completed
    user = User.first
    UserMailer.completed(user)
  end

end
