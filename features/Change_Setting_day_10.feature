Feature: Login test

  Scenario: As a user, I should able to create a new text note in evernote

    Given I login evernote with "demo" account
    When I go to "Settings" page
    And I select "Account Info" panel
    And I scroll "down" half screen "1" times
    And I select "Sign Out" panel
    And I confirm "Sign Out"
    Then I should be logged out
    And I should see "CREATE ACCOUNT" in the page
    And I should see "SIGN IN" in the page
