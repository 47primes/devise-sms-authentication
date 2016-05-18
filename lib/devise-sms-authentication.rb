require "devise"
require "devise_sms_authentication/models"
require "devise_sms_authentication/strategies"

module Devise
  mattr_accessor :password_expires_after
  @@password_expires_after = 5.minutes
end

Devise.add_module(:sms_authenticatable, route: :session, strategy: true, controller: :sessions, model: true)
