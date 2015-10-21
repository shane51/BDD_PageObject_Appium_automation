Feature: Login test


  Scenario: Login with your account

    Given I login evernote with "demo" account
    Then I should see "All Notes" in the page
