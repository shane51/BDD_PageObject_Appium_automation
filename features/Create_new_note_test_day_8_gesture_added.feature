Feature: Login test

  Scenario: As a user, I should able to create a new text note in evernote

    Given I login evernote with "demo" account
    When I create new text note named "BDD and Page Object in Appium automation"
    And I add content "My first note created by automations"
    And I take a screenshot named "create new text note"
    And I save note
    Then I should see note named "BDD and Page Object in Appium automation" in All Notes page
    And I should see "My first note created by automations" in the page
    And I scroll "down" half screen "1" times
    And I take a screenshot named "New notes"
