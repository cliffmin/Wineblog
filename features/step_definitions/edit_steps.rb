
When(/^I (?:press|click)\s?(?:on\s)?(?:the\s)?(.*) button of the first article$/) do |button_name|
	click_on(button_name + ' 3')
end

Then(/^I should see it removed from the front page$/) do
	expect(page.body).to_not match(/.*post3.*/)
end

When(/^I click on edit of a particular article$/) do
	click_on('edit 2')
end

Then(/^I should be able to edit that article$/) do
	expect(current_url).to match('posts/2/edit')
	fill_in 'post_text', :with => 'capybara test'
end
Then(/^click update$/) do
	click_on('Update Post')
end

Then(/^see it updated on the front page$/) do
	expect(page.body).to match(/capybara test/)
end