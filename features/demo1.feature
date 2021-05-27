@javascript
Feature: Demo 1.

  Scenario: Click link.
    Given I am on "https://example.com"
    Then I wait "20" seconds
    Then I follow "More information..."
