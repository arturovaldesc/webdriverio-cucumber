@test
Feature: Validate elements properties
    As a developer I want to be able to validate if some texts are visible

    Background: Go to demo app page and resize window to adjust the screen.
        Given I open the url "/"
        And the title is "DEMO APP"

    Scenario: Validate if element is not visible.
        Then I expect that element "#hidden" is not visible

    Scenario: Validate if element is visible.
        Then I expect that element "#visible" is visible

    Scenario: Validate if element exists.
        Then I expect that element "#exisiting" does exist
