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

Then("{string} should have message from {string}") do |receiver_name, sender_name|
  sender = User.find_by(name: sender_name) 
  receiver = User.find_by(name: receiver_name)
  conversation = receiver.mailbox.inbox.first  
  @receipts = conversation.receipts_for receiver  
  expect(@receipts.first.message.sender).to eq sender
end

Then("the message should have subject {string}") do |subject|
  expect(@receipts.first.message.subject).to eq subject 
end

Then("the message should have body {string}") do |body|
  expect(@receipts.first.message.body).to eq body
end



