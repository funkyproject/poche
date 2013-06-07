Feature: archive

  Scenario: Entries
    Given I am authenticated
    When I am on "/"
    And I follow "archive"
    Then the "#links a.current" element should contain "archive"