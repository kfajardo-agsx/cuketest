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

Step /^Fill in password value (.+) on Password field$/ do |value|
  value      = value.gsub(/^\([Nn]one\)$/, '')
  password = find('ng-form input[type="password"]').set value
end

Step /^Click the (.+) button$/ do |button_name|
  click_button button_name
end

