@screen
Feature: As I logged in user I can change my password

  Scenario: Change password successfully
    Given I successfully login
    When I click on Preferences button
    And I input the current password
    And I input the new password
    And I confirm the new password
    And I click on the Save button
    Then I should see "Your password has been successfully changed." message
    And I close the Preferences window
    And I logout
    And I successfully login
