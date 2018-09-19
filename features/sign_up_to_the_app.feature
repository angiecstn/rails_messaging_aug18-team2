Feature: Sign up to the app

As as user,
In order connect to my friends,
I would like to sign up and get an account.


Scenario: Happy path user sign in
  Given I am on the landing page
  When I click on the link "Sign up"
  And I fill in the "Name" with "Kalle"
  And I fill in the "Email" with "kalle@kalle.com"
  And I fill in the "Password" with "mypassword"
  And I fill in the "Password confirmation" with "mypassword"
  When I click on the link "Create"
  And I should see message "Welcome! You have signed up successfully."

Scenario: Sad path user not able to sign in
  Given I am on the landing page
  When I click on the link "Sign up"
  And I fill in the "Name" with "John-Alexander"
  And I fill in the "Email" with "john@alexander.com"
  And I fill in the "Password" with "x"
  And I fill in the "Password confirmation" with "y"
  When I click on the link "Create"
  And I should see message "Password confirmation doesn't match Password"
  And I should see message "Password is too short (minimum is 8 characters)"
  And I should see message "Name is too long (maximum is 10 characters)"

