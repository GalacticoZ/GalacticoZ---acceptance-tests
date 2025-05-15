Feature: View detailed space or event information

  Scenario: View space details before booking
    Given the user is browsing available spaces
    When the user clicks on a specific space
    Then the system should display detailed information including name, description, capacity, and services

  Scenario: Load error when accessing space information
    Given the user tries to view a space
    When the system fails to retrieve the data
    Then an error message should appear indicating the problem

  Scenario: Verify information completeness
    Given the space has been properly registered
    When the user accesses the space details
    Then all fields should be displayed: title, description, price, and schedule
