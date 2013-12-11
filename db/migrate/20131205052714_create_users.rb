class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :profile_id
      t.string :username
      t.string :email
      t.string :encrypted_password
      t.string :salt
      t.timestamps
    end
  end
end
