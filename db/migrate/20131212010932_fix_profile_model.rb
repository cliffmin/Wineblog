class FixProfileModel < ActiveRecord::Migration
  def change
  	remove_column :profiles, :desription, :string
  	add_column :profiles, :description, :string
  end
end
