ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings= {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :user_name            => Rails.application.credentials.iex_client[:gmail_username],
  :password             => Rails.application.credentials.iex_client[:gmail_password],
  :authentication       => "plain",
  :enable_starttls_auto => true
}