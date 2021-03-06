class Post < ActiveRecord::Base
	attr_accessible :title, :text, :tag_list
	acts_as_taggable
	has_many :comments, -> {order(updated_at: :desc)}
	def self.search(query)
# where(:title, query) -> This would return an exact match of the query
where("title like ?", "%#{query}%") 
	end

end

