# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :domain => 'heroku.com',
  :user_name => Rails.application.credentials.sendgrid[:USERNAME],
  :password => Rails.application.credentials.sendgrid[:PASSWORD],
  :authentication => :plain,
  :enable_starttls_auto => true
}