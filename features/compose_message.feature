Feature: compose message 

As a user,
In order to contact my friend,
I would like to compose a message.

Background:
Given the following user exists
|email            |password    |name |
|kalle@kalle.com  |mypassword  |Kalle|
And I am logged in as "kalle@kalle.com"

Scenario: Happy path composing a message
Given I am on the inbox page
And show me the page
When I click on the link "Compose"
Then I am on the compose page
And I pick a "Recipients"
And I fill in a "Subject"
And I fill in a "Message"
And I click on the link "Send Message"
Then I should see the message "Your message was successfully sent!"
