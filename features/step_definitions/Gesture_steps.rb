When(/^I scroll "([^"]*)" half screen "([^"]*)" times$/) do  |direction, accounts|
  "#{accounts}".to_i.times { all_notes_page.scrollHalfScreen(direction) }
end


When(/^I swipe "([^"]*)" half screen "([^"]*)" times$/) do  |direction, accounts|
  "#{accounts}".to_i.times { all_notes_page.scrollHalfScreen(direction) }
end


And(/^I take a screenshot named "([^"]*)"$/) do  |screenshot_name|
  sleep 1
  #all_notes_page.screenshot("Screenshots/" + "#{Time.now.strftime("%Y%m%dT%H%M%S")}" + "_"+ "#{screenshot_name}" + ".png")
  all_notes_page.screenshot("Screenshots/" + "#{Time.now.to_i}" + "_"+ "#{screenshot_name}" + ".png")
end
