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
  save_and_open_page
end

# When /^(?:|I )(?:press\s|click\s)(?:on\s)?"([^"]*)"$/ do |button|
#   click_button(button.gsub!(/"/, ' '))
# end

When /^(?:|I )(?:press|click) "?([^"]*)"?$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

# When(/^I (?:press\s|click\s)(?:on\s)?(\S*)$/) do |button_name|
# 	click_on(button_name)
# end
