

When(/^I click on delete of the (.*) article$/) do |article_num|
	if article_num == 'first' 
		num = 'delete 3'
	elsif article_num == 'last'
		num = 'delete 1'
	end
	click_on(num)
end


Then(/^I should see it removed from the front page$/) do
	expect(page.body).to_not match(/.*post3.*/)
end

When(/^I click on edit of a particular article$/) do
	save_and_open_page
	click_on('edit 2')
end

Then(/^I should be able to edit that article$/) do
	expect(current_url).to match('posts/2/edit')
end

Then(/^see it updated on the front page$/) do
  pending # express the regexp above with the code you wish you had
end