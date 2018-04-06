ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address              =>  'smtp.sendgrid.net',
  :port                 =>  '587',
  :authentication       =>  :plain,
  :user_name            =>  'ivannash23@heroku.com',
  :password             =>  'flamengo1',
  :domain               =>  'sweetrides.herokuapp.com',
  :enable_starttls_auto  =>  true
}