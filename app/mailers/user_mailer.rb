class UserMailer < ApplicationMailer
	default from: 'notifications@sweetride.com'

  def welcome_email(user)
    @user = user
    @url  = 'https://sweetrides.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to SweetRide!')
  end

  def new_user_waiting_for_approval(email)
    @email = email
    mail(to: 'sweetride831@gmail.com', subject: 'New User Awaiting Approval')
  end
  
end