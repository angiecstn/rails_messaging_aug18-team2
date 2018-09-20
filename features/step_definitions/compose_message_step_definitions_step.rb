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

