Then /^I should see "([^"]*)" on the view_index page$/ do |arg1|
  page.find('h1',:text=>arg1)
end

Then /^I should see "([^"]*)" for "([^"]*)" on the show view page$/ do |arg1, arg2|
  page.find('p',:text=>arg1)
  page.find('b',:text=>arg2)
end

Then /^I should see "([^"]*)" for "([^"]*)" on that view page$/ do |error_message, error_field|
  page.find('li',:text=>error_field+" "+error_message)
end

Given /^I have a view in view_index page$/ do
  @object_model = Factory(:object_model)
  @view = Factory(:view, :view_for=>@object_model.id)
end

Then /^I should see "([^"]*)" on that view_index page$/ do |arg1|
  page.find('#middle').text.index(arg1).should_not eq(0)
end

Then /^I should not see "([^"]*)" on that view_index page$/ do |arg1|
  page.find('#middle').text.index(arg1) == nil
end

When /^I press "([^"]*)" for "([^"]*)" on the view_index page$/ do |arg1, arg2|
  if arg1 == "Show"
    visit page_path(@view)
  elsif arg1 == "Edit"
    visit edit_page_path(@view)
  elsif arg1 == "Destroy"
    visit page_path(@view)
  end
end

Then /^I should not see "([^"]*)" on the view_index page$/ do |arg1|
  page.find("#middle").text.index(arg1) == nil
end


Then /^I should see "([^"]*)" on the view_component index page$/ do |arg1|
  page.find('div',:text=>arg1)
end

Then /^I should see "([^"]*)" on that view page$/ do |arg1|
  page.find('li',:text=>arg1)
end

