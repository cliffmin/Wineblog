Feature: User Profiles
As a user
So that I can have a record of my own information
I would like to have my own profile page

Scenario: New User Profile Creation
Given I am on the home page
When I sign up for a new profile
Then I should input my own information
And press submit
Then I should be redirected to my own profile page