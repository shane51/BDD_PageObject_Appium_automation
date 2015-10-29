When(/^I confirm "([^"]*)"$/) do |option|
  setting_page.confirmAction(option)
end

Then(/^I should be logged out$/) do
  sleep 10
  setting_page.verifyItemExistById("landing_animated_explanation")
end

