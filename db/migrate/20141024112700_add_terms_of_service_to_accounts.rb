class AddTermsOfServiceToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :terms_of_service, :string
  end
end
