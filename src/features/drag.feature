@test
Feature: Drag and Drop
    As a user I want to be able to drag the box into the drop zone

    Background: Go to demo app page and resize window to adjust the screen.
        Given I open the url "/"
        And the title is "DEMO APP"
        #When I have maximized the window

    Scenario: Drag the small square into the drop zone.
        Given I expect that element "#droppable" matches the text "Dropzone"
        When I drag element "#draggable" to element "#droppable"
        Then I expect that element "#droppable" matches the text "Dropped!"