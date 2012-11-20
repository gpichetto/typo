Feature: Merge two Articles
  As a blogger
  I want to be able to merge two similar articles in my blog

  Background:
  
  Given the following articles exist:
    | title         | body |
    | Hello World!  | the first  art |
    | Hello World!  | the second art |

  Scenario: A non-admin cannot merge two articles:
  Given the blog is set up
  And I am logged into the non-admin panel 
  Given I am on the content page
  When I follow "Hello World!"
  Then I should not see "Merge Articles" 

  Scenario: An admin can merge two articles:
  Given the blog is set up
  And I am logged into the admin panel 
  Given I am on the content page
  When I follow "Hello World!"
  Then I should see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
  Given the blog is set up
  And I am logged into the admin panel 
  Given I am on the home page
  When I go to the content page
  When I go to the edit article page
  And I fill in "merge_with" with "3"
  When I press "Merge With This Article"
  Then I should see "Error"
  
  
