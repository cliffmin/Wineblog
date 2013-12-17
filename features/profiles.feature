Feature: User Profiles
As a user
So that I can have a record of my own information
I would like to have my own profile page

Scenario: New User Profile Creation
Given I am on the front page
When I sign up for a new profile
Then I should be redirected to a tutorial page 
And when I click on okay 
Then I should see my profile page 

Scenario: User log in 
Given I am on the front page
When I press Login 
Then I should see the Log in page
And put in my log in information
When I press Log In 
Then I should see the Profile page 

Scenario: Inputting user information 

Given I am already logged in 
And I am at the front page
Then I press Profile
Then I should see the Profile page
When I press My Information
Then I should be able to input my own information
And see it updated on my profile page
