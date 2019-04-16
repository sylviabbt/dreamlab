# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  # def welcome
  #   UserMailer.welcome
  # end

  def booked(kid)
    kid = Kid.first
    UserMailer.booked(kid)
  end

  def completed(kid)
    kid = Kid.first
    UserMailer.completed(kid)
  end
end
