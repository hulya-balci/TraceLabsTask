@wip
Feature: User should be able to register

Background:
  Given User on the registration page


  Scenario: Register with valid credentials
    And User enters "Username" "Email Address" "Password" "Confirm Password"
    And User clicks to "Terms and Conditions"
    And User clicks to "Receive newsletters"
    And User clicks to "I am not a Robot"
    And User clicks to "Create an Account"
    Then "Your account has been successfully registered and pending for email verification." message should appear

  Scenario:Register without click Receive newsletters checkbox
    And User enters "Username" "Email Address" "Password" "Confirm Password"
    And User clicks to "Terms and Conditions"
    And User clicks to "Receive newsletters"
    And User clicks to "I am not a Robot"
    And User clicks to "Create an Account"
    Then "Your account has been successfully registered and pending for email verification." message should appear



  @negative
     Scenario Outline: Enter with invalid credentials
       And User enters "<Username>" "<Email Address>" "<Password>" "<Confirm Password>"
       And User clicks to "Terms and Conditions"
       And User clicks to "Receive newsletters"
       And User clicks to "I am not a Robot"
       And User clicks to "Create an Account"
       Then "<Message>" message should appear


       Examples:
         | Username | Email Address | Password | Confirm Password | Message                                           |
         | invalid  | valid         | valid    | valid            | Username is invalid.                              |
         | valid    | invalid       | valid    | valid            | Please enter a valid email address.               |
         | valid    | valid         | invalid  | valid            | Your password must be at least 5 characters long. |
         | valid    | valid         | valid    | invalid          | Password does not match, please check again.      |


  @negative
  Scenario Outline: Enter with same valid credentials
    And User enters "<Username>" "<Email Address>" "<Password>" "<Confirm Password>"
    And User clicks to "Terms and Conditions"
    And User clicks to "Receive newsletters"
    And User clicks to "I am not a Robot"
    And User clicks to "Create an Account"
    Then "<Message>" message should appear


    Examples:
      | Username   | Email Address | Password | Confirm Password | Message                                                 |
      | valid&same | valid         | valid    | valid            | Sorry! The username you entered is already in use.      |
      | valid      | valid&same    | valid    | valid            | Sorry! The email address you entered is already in use. |








  Scenario:Register without click Terms and Conditions checkbox
    And User enters "Username" "Email Address" "Password" "Confirm Password"
    And User clicks to "Receive newsletters"
    And User clicks to "I am not a Robot"
    And User clicks to "Create an Account"
    Then "Please accept our Terms and Conditions." message should appear



  Scenario:Register without click I am not a Robot checkbox
    And User enters "Username" "Email Address" "Password" "Confirm Password"
    And User clicks to "Receive newsletters"
    And User clicks to "I am not a Robot"
    And User clicks to "Create an Account"
    Then "Error! Invalid captcha response." message should appear
