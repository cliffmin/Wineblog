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
When I press login 
Then I should see the log in page
When I press submit
Then I should see my profile page 

Scenario: Inputting user information 

Given I am on the front page
When I press profile
Then I should see my profile page
When I press information
Then I should be able to input my own information
And see it updated on my profile page
