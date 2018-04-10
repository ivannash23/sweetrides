ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    user_name:      'sweetride831@gmail.com',
    password:       '2wsx@WSX2wsx@WSX',
    domain:         'gmail.com',
    address:       'smtp.gmail.com',
    port:          587,
    authentication: :plain,
  }