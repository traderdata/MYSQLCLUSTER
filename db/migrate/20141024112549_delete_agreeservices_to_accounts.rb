class DeleteAgreeservicesToAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :agreeservices
  end
end
