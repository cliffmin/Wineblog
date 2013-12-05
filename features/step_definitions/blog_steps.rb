Given(/^that I am on the (.+)$/)	 do |page_string|
	page_string.split(' ').at(0) do |page_name|
		path_to(page_name)	
	end
end

Then(/^I should see the articles in descending order$/) do
  pending # express the regexp above with the code you wish you had
end