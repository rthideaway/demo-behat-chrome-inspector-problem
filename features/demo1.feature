@javascript
Feature: Demo 1.

  Scenario: Click link.
    Given I am on "https://example.com"
    # Wait a bit so we can run chrome inspector
    Then I wait "20" seconds
    Then I follow "More information..."
