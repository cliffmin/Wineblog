When(/^I sign up for a new profile$/) do
	click_on 'Sign Up'
	fill_in 'user_username', :with => 'john smith'
	fill_in 'user_email', :with => 'johnsmith@test.com'
	fill_in 'user_password', :with => 'testpass'
	fill_in 'user_password_confirmation', :with => 'testpass'
	click_on 'Save User'
end

Then(/^I should be redirected to a tutorial page$/) do
	expect(page.body).to match(/Welcome/)
end

Then(/^when I click on okay$/) do
	click_on "got it, take me to my profile page!"
end

Then(/^I should see my profile page$/) do
	expect(page.body).to match(/John smith's/)
end


Then(/^I should be able to input my own information$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^see it updated on my profile page$/) do
  pending # express the regexp above with the code you wish you had
end



