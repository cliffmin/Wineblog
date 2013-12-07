#instantiate our database for all tests
Before do |scenario|
	Rails.logger.debug "Starting scenario: #{scenario.title}"
	Post.create!(:title => 'post1')
	Post.create!(:title => 'post2')
	Post.create!(:title => 'post3')
	visit('/')
end

Given(/^that I am on the (.+)$/)         do |page_string|
	page_string.split(' ').at(0) do |page_name|
		path_to(page_name)        
	end
end

Then(/^I should see the articles in descending order$/) do
	result = page.body
	result.should match(/post.*3.*post.*2.*post.*1/)
end