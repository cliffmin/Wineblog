#instantiate our database for all tests
#each scenario is closed

Before do |scenario|
	Rails.logger.debug "Starting scenario: #{scenario.title}"
	Post.create!(:title => 'post1', :text => "post 1 text")
	Post.create!(:title => 'post2', :text => "post 2 text")
	Post.create!(:title => 'post3', :text => "post 3 text")
end

Given /^(?:|I )am on (.+)$/ do |page_name|
	visit path_to(page_name)
end

# When /^(?:|I )(?:press\s|click\s)(.*)$/ do |button|
#   click_button(button)
# end

When /^(?:|I )(?:press) "?([^"]*)"?$/ do |name|
click_on(name)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
click_link(link)
end

Then /^I should see the (.+) page/ do |page_name|
	header = page_name
	page.should have_content header
end

Then /^I should see the fields: (.*)/ do |form_fields|
        form_fields.split(%r{,\s*}).each do |field|
                begin
                        found = find_field(field)
                rescue Capybara::ElementNotFound
                end
        end
end
