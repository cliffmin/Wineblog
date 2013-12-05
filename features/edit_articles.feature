Feature: edit articles 
As an administrator of the blog
So that I may edit content
I would like to edit/delete existing article posts

Scenario: delete an article
Given that I am on the front page 
When I click on delete of a particular article 
Then I should be able to see a confirm prompt
Then I should be able to delete that article
And see it removed from the front page

Scenario: edit an article
Given that I am on the front page 
When I click on edit of a particular article 
Then I should be able to edit that article
And see it updated on the front page

