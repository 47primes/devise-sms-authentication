module Devise
  module Models
    module SmsAuthenticatable
      def cleanup_passwords
        self.encrypted_password = nil
      end

      protected

      module ClassMethods
        Devise::Models.config(self, :password_expires_after)
      end
    end
  end
end
