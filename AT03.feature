Feature: View list of spaces published by the user

  Scenario: View all published spaces
    Given the user is logged in
    When the user navigates to "My Spaces"
    Then the user should see a list of all spaces they have published

  Scenario: No spaces published
    Given the user has not published any spaces
    When they access "My Spaces"
    Then the system should display a message: "No spaces published yet"

  Scenario: Access published space details from the list
    Given the user sees the list of their published spaces
    When the user clicks on one of them
    Then the system should display the full details of that space
