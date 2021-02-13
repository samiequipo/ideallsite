# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings= {
  :address => 'smtp.sendgrid.net',
  :port                 => 587,
  :user_name            => 'apikey',
  :password             => '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',
  :authentication       => "plain",
  :enable_starttls_auto => true
}