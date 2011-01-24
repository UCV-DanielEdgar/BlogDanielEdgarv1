Given /^an article with the title "([^"]*)"$/ do |arg1|
   @articulonum1 = Article.create(:title=>arg1)
end

When /^I am on the articles page$/ do
  visit articles_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
   response.should contain(arg1)
end


Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
@articulonum3= Article.create(:title=>arg1, :content=>arg2)
end

When /^I follow "([^"]*)"$/ do |arg1|
  click_link(arg1)
  response.should contain(arg1)
end

Given /^an article with the title "([^"]*)"$/ do |arg1|
@articulonum1 = Article.create(:title=>arg1)
end

When /^I am on the articles page$/ do
visit articles_path
end

Then /^I should see "([^"]*)"$/ do |arg1|
response.should contain(arg1)
end


Given /^an article with the title "([^"]*)" and the content "([^"]*)"$/ do |arg1, arg2|
@articulonum3= Article.create(:title=>arg1, :content=>arg2)
end

When /^I follow "([^"]*)"$/ do |arg1|
click_link(arg1)
response.should contain(arg1)
end

Given /^there is no article with the title "([^"]*)"$/ do |arg1|
Article.find_by_title(arg1)
visit new_article_path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |arg1, arg2|
fill_in arg1, :with=>arg2
end

When /^I press "([^"]*)"$/ do |arg1|

end

Then /^I should be on the article show page for "([^"]*)"$/ do |arg1|
pending # express the regexp above with the code you wish you had
end

Then /^I should see "([^"]*)" on the articles list$/ do |arg1|
pending # express the regexp above with the code you wish you had
end

Then /^I should not see "([^"]*)"$/ do |arg1|
pending # express the regexp above with the code you wish you had
end

Then /^I should be on the articles page$/ do
pending # express the regexp above with the code you wish you had
end

Then /^I should not see "([^"]*)" on the articles list$/ do |arg1|
pending # express the regexp above with the code yo
end
