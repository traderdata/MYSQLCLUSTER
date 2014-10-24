class AddAgreeTermsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :agreeservices, :string
  end
end
