module DeviseSmsAuthenticatable
  module Generators
    class DeviseSmsAuthenticationGenerator < Rails::Generators::NamedBase
      namespace "devise_sms_authentication"

      desc "Adds :sms_authenticable directive in the given model. It also generates an active record migration."

      def inject_sms_authentication_content
        path = File.join("app", "models", "#{file_path}.rb")
        if File.exists?(path)
          inject_into_file(path, "sms_authenticatable, :", after: "devise :")
          gsub_file(path, /(devise.*):(, )?database_authenticatable(, )?/, '\1\2')
        end
      end

      hook_for :orm
    end
  end
end
