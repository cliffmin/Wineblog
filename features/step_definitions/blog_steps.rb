


Then(/^I should see the articles in descending order$/) do
	result = page.body
	expect(result =~ /post3.*post2.*post1/).to be_true
	#result.should match(/post3.*post2.*post1/)
end