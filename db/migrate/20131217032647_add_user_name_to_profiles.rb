class AddUserNameToProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :username, :string
  end
end
