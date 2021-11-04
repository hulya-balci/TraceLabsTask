@wip
Feature: User should be able to register

  Background:
    Given User on the registration page

  @positive
  Scenario: Register with valid credentials
    And User enters "zxcvbn" "098767" "1mail@email.com" "098767"
    And User clicks to "I agree to the"
    And User clicks to "I agree to receive the"
   # And User clicks to "I am not a robot"
    And User clicks to "Create an Account"
    Then "Your account has been successfully registered and pending for email verification." message should appear

  Scenario:Register without click Receive newsletters checkbox
    And User enters "zxcvbn1" "098767" "2mail@email.com" "098767"
    And User clicks to "I agree to the"
    #And User clicks to "I am not a robot"
    And User clicks to "Create an Account"
    Then "Your account has been successfully registered and pending for email verification." message should appear


  @negative
  Scenario Outline: Enter with invalid credentials
    And User enters "<Username>" "<Password>" "<Email Address>" "<Confirm Password>"
    And User clicks to "I agree to the"
    And User clicks to "I agree to receive the"
       #And User clicks to "I am not a robot"
    And User clicks to "Create an Account"
    Then "<Message>" message should appear


    Examples:
      | Username | Password | Email Address   | Confirm Password | Message                                           |
      | zxcv     | 098767   | 3mail@email.com | 098767           | Username is invalid.                              |
      | zxcvbn2  | 098767   | valid           | 098767           | Please enter a valid email address.               |
      | zxcvbn3  | 098      | 4mail@email.com | 098              | Your password must be at least 5 characters long. |
      | zxcvbn4  | 098767   | 5mail@email.com | 0987             | Password does not match, please check again.      |


  @negative
  Scenario Outline: Enter with same valid credentials
    And User enters "<Username>" "<Password>" "<Email Address>" "<Confirm Password>"
    And User clicks to "I agree to the"
    And User clicks to "I agree to receive the"
    #And User clicks to "I am not a robot"
    And User clicks to "Create an Account"
    Then "<Message>" message should appear


    Examples:
      | Username | Password | Email Address   | Confirm Password | Message                                                 |
      | zxcvbn   | 098767   | 6mail@email.com | 098767           | Sorry! The username you entered is already in use.      |
      | zxcvbn5  | 098767   | 1mail@email.com | 098767           | Sorry! The email address you entered is already in use. |


  Scenario:Register without click Terms and Conditions checkbox
    And User enters "zxcvbn6" "098767" "7mail@email.com" "098767"
    And User clicks to "I agree to receive the"
    #And User clicks to "I am not a robot"
    And User clicks to "Create an Account"
    Then "Please accept our Terms and Conditions." message should appear


  Scenario:Register without click I am not a Robot checkbox
    And User enters "zxcvbn7" "098767" "8mail@email.com" "098767"
    And User clicks to "I agree to the Terms and Conditions"
    And User clicks to "I agree to receive the"
    And User clicks to "Create an Account"
    Then "Error! Invalid captcha response." message should appear
