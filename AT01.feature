Feature: Register new spaces or events

  Scenario: Register a space with valid information
    Given the user is logged in
    When the user fills out the form with valid space details
    And clicks on "Register"
    Then the system should save the space and confirm registration

  Scenario: Attempt to register a space with missing data
    Given the user is on the registration form
    When the user leaves required fields empty and clicks "Register"
    Then the system should show validation errors

  Scenario: Duplicate space registration
    Given the user tries to register a space with the same name and details as an existing one
    When the user submits the form
    Then the system should notify the user of a possible duplication
