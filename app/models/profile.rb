class Profile < ActiveRecord::Base
	attr_accessible :email, :name, :address2, :address1, :city, :state, :zip, :phone, :website, :description, :created_at 
	belongs_to :user
end
