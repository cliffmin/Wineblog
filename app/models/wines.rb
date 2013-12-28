class Wines < ActiveRecord::Base
	attr_accessible :name, :description
	validates :name, presence: true 
	validates_uniqueness_of :name, :message =>'%{value} has already been taken'

end
