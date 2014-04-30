Step /^I am on the login page$/ do
  visit '/session/new#/login'
end

Step /^I should see the message "(.+)"$/ do |arg1|
   expect(page).to have_content(arg1)
end