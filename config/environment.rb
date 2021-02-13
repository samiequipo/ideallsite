# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :domain => 'heroku.com',
  :user_name => 'apikey',
  :password => 'your_sendgrid_api_key',
  :authentication => :plain,
  :enable_starttls_auto => true
}