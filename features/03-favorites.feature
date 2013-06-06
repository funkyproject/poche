Feature: favorites

  Scenario: Entries
    Given I am authenticated
    When I am on "/"
    When I follow "favorites"
    Then the "#links a.current" element should contain "favorites"