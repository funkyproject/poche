Feature: config

  Scenario: Entries
    Given I am authenticated
    When I am on "/"
    And I follow "config"
    Then the "#links a.current" element should contain "config"