Feature: authentication
  
  Scenario:
    Given I am on "/"
    When I fill in "login" with "poche"
    And I fill in "password" with "poche"
    And I press "Sign in"
    Then I should see "welcome in your pocket"