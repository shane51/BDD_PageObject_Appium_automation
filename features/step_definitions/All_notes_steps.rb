Then(/^I should see "([^"]*)" in the page$/) do |text|
  all_notes_page.verifyTextExist(text)
end

Then(/^I should not see "([^"]*)" in the page$/) do |text|
  all_notes_page.verifyTextNotExist(text)
end