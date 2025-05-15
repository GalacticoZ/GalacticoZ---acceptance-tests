Feature: Edit information of published spaces

  Scenario: Modify space details successfully
    Given the user is logged in and has published spaces
    When the user edits the description and updates the information
    Then the system should save the new details and show a confirmation

  Scenario: Edit with invalid data
    Given the user tries to edit a space
    When they enter invalid values (e.g., negative capacity)
    Then the system should display an error and prevent saving

  Scenario: Cancel edit action
    Given the user is editing a space
    When they click "Cancel"
    Then the system should discard the changes and return to the previous view
