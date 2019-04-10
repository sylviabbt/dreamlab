class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def matched(user)
    @user = user

    mail(to: @user.email, subject: "You've been matched!")
  end

  def completed(user)
    @user = user

    mail(to: @user.email, subject: "The collaboration is completed!")
  end

end
