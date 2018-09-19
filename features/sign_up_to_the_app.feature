Feature: Sign up to the app

As as user,
In order connect to my friends,
I would like to sign up and get an account.


Scenario:
Given I am on the landing page
When I click on the link "Sign up"
And I fill in the "Name" with "Albert"
And I fill in the "Email" with "albert.stjarne@gmail.com"
And I fill in the "Password" with "mypassword"
And I fill in the "Password confirmation" with "mypassword"
When I click on the link "Create"
And I should see message "Welcome! You have signed up successfully."