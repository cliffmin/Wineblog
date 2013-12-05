Given(/^that I am on the (.+)$/)	 do |page_string|
	page_string.split(' ').at(0) do |page_name|
		path_to(page_name)	
	end
end

Then(/^I should see the articles in descending order$/) do
   post1 = Post.create!
   post2 = Post.create!
   post3 = Post.create!
   visit '/posts'
   result = page.body
   result.should match(/post.*3.*post.*2.*post.*1/)
end