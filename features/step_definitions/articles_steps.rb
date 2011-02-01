
Given /^an article with the title "([^"]*)"$/ do |arg1|
  @articulonum1 = Article.create(:title=>arg1)
end

Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
 @articulonum3= Article.create(:title=>arg1, :content=>arg2)
end

Given /^there is no article with the title "([^"]*)"$/ do |arg1|
 Article.find_by_title(arg1)
end

Then /^I should see "([^"]*)" on the articles list$/ do |arg1|
 page.should have_content(arg1)
end

Then /^I should not see "([^"]*)" on the articles list$/ do |arg1|
   page.should_not have_content(arg1)
end

Given /^I am authenticated$/ do
  
  email = 'testing@man.net'
  login = 'Testing man'
  password = 'secretpass'


  User.new(:email => email,
           :password => password,
           :password_confirmation => password).save!


  
  And %{I go to login}
  And %{I fill in "user_email" with "#{email}"}
  And %{I fill in "user_password" with "#{password}"}
  And %{I press "Sign in"}

end

Given /^I am not authenticated$/ do
  visit('/users/sign_out')
end






