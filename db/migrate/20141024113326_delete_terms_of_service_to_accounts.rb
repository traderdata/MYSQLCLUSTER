class DeleteTermsOfServiceToAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :terms_of_service
  end
end
