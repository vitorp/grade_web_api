# Use this hook to configure devise mailer, warden hooks and so forth.
# Many of these configuration options can be set straight in your model.
Devise.setup do |config|
  config.mailer_sender = "support@myapp.com"

  config.navigational_formats = [:json]
end
