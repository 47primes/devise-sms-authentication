module DeviseSmsAuthentication
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Install the devise sms authentiation extension"

      def add_configs
        inject_into_file "config/initializers/devise.rb", "\n" +
        "  # ==> Devise SMS Authentication Extension\n" +
        "  # Time limit for logging in after one-time password sent via SMS.\n" +
        "  config.password_expires_after = 5.minutes\n\n", :after => "Devise.setup do |config|\n"
      end

      def copy_views
        copy_file "../../../app/views/devise/sms_authentication/registrations/new.html.erb", "app/views/devise/sms_authentication/registrations/new.html.erb"
        copy_file "../../../app/views/devise/sms_authentication/registrations/confirm.html.erb", "app/views/devise/sms_authentication/registrations/confirm.html.erb"
      end
    end
  end
end
