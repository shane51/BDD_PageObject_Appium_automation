Given (/^I launch evernote$/) do
  sleep 10
end
Given (/^I login evernote with "([^"]*)" account$/) do |account|
  login_page.skip_login_animation
  login_page.login(test_account[account])
end