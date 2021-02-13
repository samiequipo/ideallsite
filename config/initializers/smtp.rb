# ActionMailer::Base.smtp_settings = {
#   address: 'smtp.sendgrid.net',
#   port: 587,
#   domain: 'heroku.com',
#   user_name: Rails.application.credentials.sendgrid[:USERNAME],
#   password: Rails.application.credentials.sendgrid[:PASSWORD],
#   authentication: :login,
#   enable_starttls_auto: true
# }

ActionMailer::Base.smtp_settings = {
  domain: 'ideallsite-2.herokuapp.com',
  address: "smtp.sendgrid.net",
  port: 587,
  authentication: :plain,
  user_name: 'apikey',
  password: Rails.application.credentials.sendgrid[:api_key]
}