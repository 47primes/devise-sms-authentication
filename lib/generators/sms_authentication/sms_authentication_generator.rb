module SmsAuthenticatable
  module Generators
    class SmsAuthenticationGenerator < Rails::Generators::NamedBase
      namespace "sms_authentication"

      desc "Adds :sms_authenticable directive in the given model. It also generates an active record migration."

      def inject_sms_authentication_content
        path = File.join("app", "models", "#{file_path}.rb")
        inject_into_file(path, "sms_authenticatable, :", after: "devise :") if File.exists?(path)
      end

      hook_for :orm
    end
  end
end
