class Post < ActiveRecord::Base
	attr_accessible :title, :text
	has_many :comments
end
