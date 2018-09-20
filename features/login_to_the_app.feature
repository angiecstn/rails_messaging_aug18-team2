Feature: login to the app

As a user,
In order to see my messages,
I would like to sign in to my account.

Background: 
Given the following user exists
|email          |password  |name |
|kalle@kalle.com|mypassword|Kalle|

Scenario:
Given I am on the landing page
When I click on the link "Login"
And I fill in the "Email" with "kalle@kalle.com"
And I fill in the "Password" with "mypassword"
When I click on the link "Log in"
Then I should be on the inbox page
And I should see the message "Signed in successfully"

