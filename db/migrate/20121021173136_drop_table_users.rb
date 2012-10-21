class DropTableUsers < ActiveRecord::Migration
  def up
    drop_table :users
  end

  def down
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.timestamps
    end
    add_index :users, :email
  end
end
