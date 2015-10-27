When(/^I scroll "([^"]*)" half screen "([^"]*)" times$/) do  |direction, accounts|
  "#{accounts}".to_i.times { all_notes_page.scrollHalfScreen(direction) }
end


When(/^I swipe "([^"]*)" half screen "([^"]*)" times$/) do  |direction, accounts|
  "#{accounts}".to_i.times { all_notes_page.scrollHalfScreen(direction) }
end


And(/^I take a screenshot named "([^"]*)"$/) do  |screenshot_name|
  all_notes_page.captureScreen(screenshot_name)
end
