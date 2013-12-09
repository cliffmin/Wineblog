
Given(/^that I am looking at an article$/) do
	visit('/') 
	click_on('post 3')
end

When(/^I submit a comment about the article$/) do
	page.fill_in 'comment[text]', :with => 'this is my first comment'
	click_on 'Post Comment'
	page.fill_in 'comment[text]', :with => 'this is my second comment'
	click_on 'Post Comment'
end

Then(/^I should be able to see my comment$/) do
	page.body.should match(/this is my first comment/)
end

Then(/^the comments should be in descending order$/) do
# 	page.body.should match(/this is my second comment.*this is my first comment/)
end
