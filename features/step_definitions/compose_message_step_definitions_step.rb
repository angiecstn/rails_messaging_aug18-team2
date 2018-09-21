Given("the following user is logged in") do |table|
    table.hashes.each do |user|
        User.create(user)
  end
end

Given("I am logged in as {string}") do |email|
  @user = User.find_by(email: email)
  login_as(@user, scope: :user)
end

Given("I am on the inbox page") do
  visit mailbox_inbox_path
end

Given("show me the page") do
  save_and_open_page
end

Then("I am on the compose page") do
  visit new_conversation_path
end

When("I pick a {string}") do |option|
  select option, from: "conversation_recipients"
end

Then("I pick {string}") do |option|
  select option, from: "conversation_recipients"
end

# Then("{string} should have message from {string} with subject {string} and body {string}") do |receiver, user, subject, body|
#   # 1. Find the sender and receiver
#   user = User.find_by(email: user_email) 
#   # 2. find the conversation for reciever

#   # 3. find the receipts

#   # 4. read message and make sure the body and subject match to the variables body and subject

# end


Then("{string} should have message from {string}") do |user, user_email|
  user = User.find_by(email: user_email)
end

Then("the message should have subject {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the message should have body {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


