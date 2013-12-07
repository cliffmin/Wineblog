Feature: Create User Accounts
	
	As a visitor;
	So that I may maintain a profile on the blog;
	I would like to follow a link to create a user account.

	

Scenario: follow signup link
	Given I am on the home page

	When I press Sign Up

	Then I should see the signup page

	Then I should see the fields: Username, Email, Password, Password Confirmation