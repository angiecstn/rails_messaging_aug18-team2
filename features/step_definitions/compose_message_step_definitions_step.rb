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

When("I click on the link {string}") do |button|
  click_on button
end

Given("show me the page") do
  save_and_open_page
end

When("I fill in a {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am on the compose page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I pick a {string}") do |button|
  click_on button
end

