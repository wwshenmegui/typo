Feature: Create Categories
  As an administrator
  In order to classify blogs
  I want to be able to add categories to blogs
  
  Background:
    Given the blog is set up
    And I am logged into the admin panel
    Scenario: Successfully create and edit categories
      Given I am on the new categories page
      When I fill in "category_name" with "books"
      And I fill in "category_keywords" with "sci-fi"
      And I fill in "category_permalink" with "yes"
      And I fill in "category_description" with "desc"
      And I press "Save"
      Then I should see "books"
      Then I should see "sci-fi"
      Then I should see "yes"
      Then I should see "desc"
      When I fill in "category_name" with "books1"
      And I fill in "category_keywords" with "sci-fi1"
      And I fill in "category_permalink" with "yes1"
      And I fill in "category_description" with "desc1"
      And I press "Save"
      Then I should see "books1"
      Then I should see "sci-fi1"
      Then I should see "yes1"
      Then I should see "desc1"
      