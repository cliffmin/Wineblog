Given(/^that I am on the (.+)$/)	 do |page_string|
	page_string.split(' ').at(0) do |page_name|
		path_to(page_name)	
	end
end

Then(/^I should see the articles in descending order$/) do

	myPosts = page.all('div#posts').first
	breakpoint
	puts "www"
end