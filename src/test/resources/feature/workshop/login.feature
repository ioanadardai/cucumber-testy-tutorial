@screen
Feature: Login

  Scenario: Login successfully
    Given I access the login page
    And I insert valid credentials
    When I click on login button
    Then I check if user was logged in

  Scenario: Login with wrong credentials
    Given I access the login page
    And I insert invalid credentials
    When I click on login button
    Then I expect invalid credentials message

  Scenario: Login with no password
    Given I access the login page
    When I enter "aaa@fast.com"/"" credentials
    And I click on login button
    Then I expect "Please enter your password!" error message

  Scenario: Login with no email
    Given I access the login page
    When I enter ""/"pass" credentials
    And I click on login button
    Then I expect "Please enter your email!" error message

  Scenario: Login with no email and no password
    Given I access the login page
    When I enter ""/"" credentials
    And I click on login button
    Then I expect "Please enter your email!" error message

  Scenario Outline: Failed login
    Given I access the login page
    When I enter "<email>"/"<password>" credentials
    And I click on login button
    Then I expect "<message>" error message
    Examples:
      | email        | password | message                     |
      | aaa@fast.com |          | Please enter your password! |
      |              | pass     | Please enter your email!    |
      |              |          | Please enter your email!    |
      | aaa@fast.com | somepass | Invalid user or password!   |

    Scenario: Logout success
      Given I successfully login