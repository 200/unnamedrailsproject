Magic::Link.configure do |config|
  config.user_class = "User" # Default is User
  config.email_from = "tokenowo.mail@gmail.com"
  config.token_expiration_hours = 6 # Default is 6
end
