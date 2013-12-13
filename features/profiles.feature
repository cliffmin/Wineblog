Feature: User Profiles
As a user
So that I can have a record of my own information
I would like to have my own profile page

Scenario: New User Profile Creation
Given I am on the home page
When I sign up for a new profile
Then I should be redirected to a tutorial page 
And when I click on okay 
Then I should see my profile page 

Scenario: User information form 
And I should be able to input my information
When I click submit
Then I should see my profile page updated
