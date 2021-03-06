Then /^I should see "([^"]*)" on the setting index page$/ do |arg1|
  page.find('#middle').text.index(arg1).should_not eq(0)
end

When /^I press "([^"]*)" for "([^"]*)" on the setting index page$/ do |arg1, arg2|
  @setting=Factory(:setting)
  if arg1 == "Edit" 
    visit edit_setting_path(@setting)
  end
end

Then /^I should see "([^"]*)" on the edit setting page$/ do |arg1|
  page.find("#middle").text.index(arg1).should_not eq(0)
end

Then /^I should see "([^"]*)" for "([^"]*)" on the setting page$/ do |arg1, arg2|
  page.find('td',:text=>arg1)
end

Then /^I should see "([^"]*)" on the setting_index page$/ do |arg1|
  page.find('div',:text=>arg1)
end
