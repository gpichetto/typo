Feature: Create or Edit a Category
  As an admin blogger
  I want to be able to create or update categories in my blog

  Background:
  
  Given the following category exist:
    | name           | id |
    | General A      | 3  |
  
  Scenario: An admin user can create a Category
  Given the blog is set up
  And I am logged into the admin panel 
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I fill in "category_name" with "Special"
  When I fill in "category_keywords" with "spec"
  When I fill in "category_description" with "Special for VIP"
  When I press "Save"
  Then I should see "Category was successfully saved"

  Scenario: An admin user can update a Category
  Given the blog is set up
  And I am logged into the admin panel 
  Given I am on the content page
  When I follow "Categories"
  Then I should see "Categories"
  When I follow "General A"
  When I fill in "category_description" with "General category A"
  When I press "Save"
  Then I should see "Category was successfully saved"
