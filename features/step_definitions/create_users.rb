# Given /^(?:|I )am on (.+)$/ do |page_name|
#   visit path_to(page_name)
# end



Then /^I should see the (.+) page/ do |page_name|
	header = page_name.capitalize
	page.should have_content header
end

And /^I should see the fields: (.*)/ do |form_fields|
	form_fields.split(%r{,\s*}).each do |field|
		begin
			found = find_field(field)
		rescue Capybara::ElementNotFound
		end
	end
end

