Feature: compose message 
    As a user,
    In order to contact my friend,
    I would like to compose a message.

Background:
    Given the following user exists
        |email            |password    |name |
        |kalle@kalle.com  |mypassword  |Kalle|
        |kanin@kalle.com  |mypassword  |Kanin|
    And I am logged in as "kalle@kalle.com"

Scenario: Happy path composing a message
    Given I am on the inbox page
    When I click on the link "Compose"
    Then I am on the compose page
    And show me the page
    And I pick "Kanin" 
    And I fill in the "Subject" with "Hej Kanin"
    And I fill in the "Type your message here" with "Give me back my Carrots!"
    And I click on the link "Send Message"
    Then I should see the message "Your message was successfully sent!"
