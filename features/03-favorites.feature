Feature: favorites

  Scenario: Entries
    Given I am authenticated
    When I am on "/"
    And I follow "favorites"
    Then the "#links a.current" element should contain "favorites"
    And the "div.entrie:first-child" element should contain "poche : pour remplacer Instapaper, Pocket et Readability"

  Scenario: Add favorite
    Given I am authenticated
    When I am on "/"
    And I click on the element with css selector "div.entrie:first-child a.fav"
    Then I should see an "div.entrie:first-child a.fav-off" element

