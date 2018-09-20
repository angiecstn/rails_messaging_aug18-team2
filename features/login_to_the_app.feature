Feature: login to the app

As a user,
In order to see my messages,
I would like to sign in to my account.

Background: 
Given the following user exists
|email            |password    |name |
|kalle@kalle.com  |mypassword  |Kalle|

Scenario: Happy path user login
Given I am on the landing page
When I click on the link "Login"
And I fill in the "Email" with "kalle@kalle.com"
And I fill in the "Password" with "mypassword"
And I click on the link "Log in"
Then I should see the message "Signed in successfully"

Scenario: Sad path user not able to login
Given I am on the landing page
When I click on the link "Login"
And I fill in the "Email" with "jorge@kalle.com"
And I fill in the "Password" with "x"
And I click on the link "Log in"
Then I should see the message "Invalid Email or password."
