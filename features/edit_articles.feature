Feature: edit articles 
As an administrator of the blog
So that I may edit content
I would like to edit/delete existing article posts

Scenario: delete an article
Given I am on the front page 
When I click on the delete button of the first article 
Then I should see it removed from the front page

Scenario: edit an article
Given I am on the front page 
When I click on edit of the first article 
Then I should be able to edit that article
Then click update
And see it updated on the front page
