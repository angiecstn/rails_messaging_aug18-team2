Given("I am on the landing page") do
  visit root_path
end

When("I click on the link {string}") do |button|
  click_on button
end

When("I fill in the {string} with {string}") do |field, content|
  fill_in field, with: content
end



# Then("the following user exists") do |table|
#   table.hashes.each do |name|
#     name.create!(name)
#   end
#  end

Then("I should see message {string}") do |message|
  expect(page).to have_content message
  
end
