class SmsAuthenticationAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def change
    add_column :<%= table_name %>, :sms_attempts_count, :integer, default: 0
    add_column :<%= table_name %>, :sms_number, :string
    add_column :<%= table_name %>, :sms_encrypted_otp, :string
    add_column :<%= table_name %>, :sms_otp_salt, :string
    add_column :<%= table_name %>, :sms_backup_key, :string
  end
end
