When(/^I go to "([^"]*)" page$/) do |option|
  sidebar_menu.goto(option)
end

When(/^I select "([^"]*)" panel$/) do |panel_name|
  sidebar_menu.selectPanel(panel_name)
end





