class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
