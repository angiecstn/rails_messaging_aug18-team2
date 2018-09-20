Given("the following user exists") do |table|
    table.hashes.each do |user|
        User.create(user)
    end
  end
  
  Given("I am on the landing page") do
    visit root_path
  end
  
  Then("I should see the message {string}") do |message|
    expect(page).to have_content message
  end