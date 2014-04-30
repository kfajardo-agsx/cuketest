Testcase /^A user should be able to see the message "(.+)" on the login page$/ do |arg1|
 Preconditions  %{
    * I am on the login page
 }
 Script %{  
    * I should see the message "#{ arg1 }"
  }
 
 Cleanup %{
  
 }
end
