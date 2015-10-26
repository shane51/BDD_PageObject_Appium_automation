Feature: Login test


  Scenario: Login with your account

    Given I login evernote
    When I create new text note
    And I save the note
    Then I should see newly created note in All Notes page

