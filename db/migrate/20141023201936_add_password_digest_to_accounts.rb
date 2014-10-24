class AddPasswordDigestToAccounts < ActiveRecord::Migration
  def change
    remove_column :accounts, :password
    add_column :accounts, :password_digest, :string
  end
end
