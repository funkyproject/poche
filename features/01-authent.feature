Feature: authentication
  
  Scenario: Login
    Given I am on "/"
    When I fill in "login" with "poche"
    And I fill in "password" with "poche"
    And I press "Sign in"
    Then I should see "welcome in your pocket"

  Scenario: Logout
    Given I am authenticated
    When I am on "/"
    And I follow "logout"
    Then I should see "login to your poche"