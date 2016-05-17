class DeviseAddLastseenable<%= table_name.camelize.singularize %> < ActiveRecord::Migration
  def change
    add_column :<%= table_name %>, :sms_number, :string
    add_column :<%= table_name %>, :last_login_at, :datetime
  end
end
