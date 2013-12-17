class RecreateProfilesTable < ActiveRecord::Migration
	def change
		create_table :profiles do |t|
			t.integer :user_id
			t.string :first_name
			t.string :last_name
			t.string :address1
			t.string :address2
			t.string :city
			t.string :state
			t.string :zip
			t.string :phone
			t.string :email
			t.string :website
			t.text :description

			t.timestamps
		end
	end
end
