
Given(/^that I am looking at an article$/) do
	visit('/') 
	click_on('post 3')
end

When(/^I submit a comment about the article$/) do
	page.fill_in 'comment[text]', :with => 'this is my comment'
	save_and_open_page
	click_on 'Post Comment'
end

Then(/^I should be able to see my comment$/) do
	page.body.should match('this is my comment')
end