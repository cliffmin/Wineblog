Feature: article creation         
As an administrator of the blog
So that I may create content
I would like to create article posts

Scenario: creation of a new article 
Given that I am on the home page
When I click on new post
Then I should directed to a new post screen 
And when I submit it
Then I should be able to see it on the front page
