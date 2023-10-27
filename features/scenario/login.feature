Feature: Login instagram

Scenario: User success login with valid credential
    Given user is on login page
    When user input valid credential
    Then user successfully login

Scenario: User failed login with invalid email
    Given user is on login page
    When user input invalid email
    Then user unsuccesfully login and error message appear
    #Then user get error message "Error: The username email is not registered on this site. If you are unsure of your username, try your email address instead."

Scenario: User failed login with invalid password
    Given user is on login page
    When user input invalid password
    Then user unsuccesfully login and error message appear 

Scenario: User failed login with invalid credential
    Given user is on login page
    When user input invalid credential
    Then user unsuccesfully login and error message appear 

Scenario: User failed login with empty credential
    Given user is on login page
    When user click login with empty credential
    Then user unsuccesfully login and error message appear 
        

