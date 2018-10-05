@test
Feature: Validate buttons change elements visibility.
    As a user I want to be able to validate if elements turn visible/invisible by clicking the buttons.

    Background: Go to demo app page and resize window to adjust the screen.
        Given I open the url "/"
        And the title is "DEMO APP"

    Scenario: Element becomes visible after clicking a button.
        Given I expect that element "#makeVisible" is not visible
        When I click on the button "#btnMakeVisible"
        Then I expect that element "#makeVisible" becomes visible

    Scenario: Element becomes invisible after clicking a button.
        Given I expect that element "#makeInvisible" is visible
        When I scroll to element "#visible"
        And I click on the button "#btnMakeInvisible"
        Then I expect that element "#makeInvisible" becomes not visible