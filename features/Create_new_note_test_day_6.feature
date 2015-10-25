Feature: Login test


  Scenario: Login with your account

    Given I login evernote with "demo" account
    When I create new text note named "BDD and Page Object in Appium automation"
    And I add content "My first note created by automations"
    And I save note
    Then I should see note named "BDD and Page Object in Appium automation" in All Notes page
    And I should see "My first note created by automations" in the page
