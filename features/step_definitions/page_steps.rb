Testcase /^A user should be able to see the message "(.+)" on the login page$/ do |arg1|
 Preconditions  %{
    * Visit the login page
 }
 Procedure %{  
    * The message "#{ arg1 }" should be displayed on the page
  }
 
 Cleanup %{
  
 }
end

Testcase /^A user with username (.+) and password (.+) Can Login using credentials (.+), (.+)$/i do |username, password, inputted_username, inputted_password|
  #Preconditions %{
  #  * Ensure that a user with username #{ username } and password #{password} exists
  #}
  Procedure %{
    * Visit the login page
    * Fill in the Username field with #{inputted_username}
    * Fill in the Password field with #{inputted_password}
    * Click the Login button
  }
  Cleanup %{
    *  
  }
end

Testcase /^A user with username (.+) and password (.+) Cannot Login using credentials (.+), (.+)$/i do |username, password, inputted_username, inputted_password|
 # Preconditions %{
 #   * Ensure that a user with username #{ username } and password #{password} exists
 # }
  Procedure %{
    * Visit the login page
    * Fill in the Username field with #{inputted_username}
    * Fill in the Password field with #{inputted_password}
    * Click the Login button
  }
  Cleanup %{
    *  
  }
end