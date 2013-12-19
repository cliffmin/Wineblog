class Post < ActiveRecord::Base
	attr_accessible :title, :text
	has_many :comments, -> {order(updated_at: :desc)}
	has_many :taggings
	has_many :tags, through: :taggings
	def self.search(query)
# where(:title, query) -> This would return an exact match of the query
where("title like ?", "%#{query}%") 
	end

def self.tagged_with(name)
	Tag.find_by_name!(name).articles
end

def self.tag_counts
	Tag.select("tags.*, count(taggings.tag_id) as count").
	joins(:taggings).group("taggings.tag_id")
end

def tag_list
	tags.map(&:name).join(", ")
end

def tag_list=(names)
	self.tags = names.split(",").map do |n|
		Tag.where(name: n.strip).first_or_create!
	end

end
end

