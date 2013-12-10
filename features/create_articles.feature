Feature: article creation         
As an administrator of the blog
So that I may create content
I would like to create article posts

Scenario: creation of a new article 
Given I am on the home page
When I press New Post
Then I should be able to create an article
And press Create Post
Then I should be able to see it on the front page