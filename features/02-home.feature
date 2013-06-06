Feature: home page
  
  Scenario: Entries
    Given I am authenticated
    When I am on "/"
    Then I should see 9 "div.entrie" elements


  Scenario: Menu
    Given I am authenticated
    When I am on "/"
    Then I should see "home"
    And I should see "favorites"
    And I should see "archive"
    And I should see "config"
    And I should see "logout"
    