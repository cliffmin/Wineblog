class Profile < ActiveRecord::Base
	attr_accessible :id, :user_id, :email, :username, :address2, :address1, :city, :state, :zip, :phone, :website, :description, :created_at, :first_name, :last_name
	belongs_to :user
end
