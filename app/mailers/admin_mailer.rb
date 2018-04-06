class AdminMailer < ApplicationMailer
	default from: 'notifications@sweetride.com'
    layout 'mailer'

    def new_user_waiting_for_approval(email)
      @email = email
      mail(to: 'sweetride831@gmail.com', subject: 'New User Awaiting Approval')
    end
end
