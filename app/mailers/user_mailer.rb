class UserMailer < ApplicationMailer
	default from: 'notifications@sweetride.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://sweetrides.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to SweetRide!')
  end
end