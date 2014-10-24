class DeleteFirstnameToAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :firstname
    remove_column :accounts, :lastname
    add_column :accounts, :name, :string
  end
end
