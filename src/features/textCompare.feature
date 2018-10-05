@test
Feature: Elements text comparison.
    As a developer I want to be able to test the text inside a element against the text inside
    another element

    Background: Go to demo app page and resize window to adjust the screen.
        Given I open the url "/"
        And the title is "DEMO APP"

    Scenario: Elements contain different text
        Then I expect that element "#textComparison1" not contains the same text as element "#textComparison2"
    
    Scenario: Elements contain same text
        Then I expect that element "#textComparison1" contains the same text as element "#textComparison3"
        And I expect that element "#textComparison6" contains the same text as element "#textComparison7"
        And I expect that element "#textComparison8" contains the same text as element "#textComparison9"

    Scenario: Elements not contain any text
        Then I expect that element "#textComparison4" not contains any text
        And I expect that element "#textComparison5" not contains any text