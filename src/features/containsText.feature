@test
Feature: Elements containing text.
    As a developer I want to be able to test the text that contains an element

    Background: Go to demo app page and resize window to adjust the screen.
        Given I open the url "/"
        And the title is "DEMO APP"

    Scenario: Elements contain certain text
        When I set " cucumber" to the inputfield "#valueDoesNotContainCucumber"
        Then I expect that element "#textDoesContainCucumber" contains the text "cucumber"
        And I expect that element "#valueDoesContainCucumber" contains the text "cucumber"
        And I expect that element "#valueDoesNotContainCucumber" contains the text "strawberry"
    
    Scenario: Elements not contain certain text
        Then I expect that element "#textDoesNotContainCucumber" not contains the text "cucumber"
        And I expect that element "#valueDoesNotContainCucumber" not contains the text "cucumber"