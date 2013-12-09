
When(/^I click on the delete button of the first article$/) do
	click_on('delete 3')
end

When(/^I click on edit of the first article$/) do
	click_on('edit 2')
end

Then(/^I should see it removed from the front page$/) do
	expect(page.body).to_not match(/.*post3.*/)
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

Then(/^I should be able to create an article$/) do
	fill_in 'post_title', :with => 'my newest articles title'
	fill_in 'post_text', :with => 'my newest articles text'		
end
Then(/^I should be able to see it on the front page$/) do
	expect(page.body).to match(/my newest articles title/)
end
