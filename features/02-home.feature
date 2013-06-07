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
    
  Scenario: First entry
  	Given I am authenticated
    When I am on "/"
    Then the "div.entrie:first-child" element should contain "PHP Simple HTML DOM Parser"
    And the "div.entrie:first-child" element should contain "toggle mark as read"
    And the "div.entrie:first-child" element should contain "toggle favorite"
    And the "div.entrie:first-child" element should contain "toggle delete"

  @javascript
  Scenario: Sort by date asc
  	Given I am authenticated
    When I am on "/"
    And I press "by date asc"
    Then the "div.entrie:first-child" element should contain "PHP Simple HTML DOM Parser"
