NONE    = '(None)'
ANY     = '(Any)'
RANDOM  = '(Random)'

Step /^Visit the login page$/ do
  visit '/session/new#/login'
end

Step /^The message "(.+)" should be displayed on the page$/ do |message|
   expect(page).to have_content(message)
end

Step /^Fill in the (.+) field with (.+)$/ do |field_name, value|
  value      = value.gsub(/^\([Nn]one\)$/, '')
  field_name = field_name.split.join('_').downcase
  fill_in field_name, with: value
end
