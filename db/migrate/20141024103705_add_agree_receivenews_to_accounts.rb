class AddAgreeReceivenewsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :agreereceivenews, :string
  end
end
