Feature: poche it

  Scenario: Add poche not authenticated
    Given I am on "/?action=add&url=http%3A%2F%2Fphp.net%2F"
    Then I should see "login to your poche"

  Scenario: Add poche not authenticated and login
    Given I am on "/?action=add&url=http%3A%2F%2Fphp.net%2F"
    When I am authenticated
    Then I should see "welcome in your pocket!"
    And I should see "the link has been added successfully"
    And the "div.entrie:first-child" element should contain "PHP: Hypertext Preprocessor"

  Scenario: Add poche success
    Given I am authenticated
    When I am on "/?action=add&url=http%3A%2F%2Fphp.net%2F"
    Then I should see "the link has been added successfully"
    And the "div.entrie:first-child" element should contain "PHP: Hypertext Preprocessor"