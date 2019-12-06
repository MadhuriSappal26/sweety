Feature: MenuLevel Feature

Background:
Given User Clicks on Levels menu
When User Clicks on Add New button

Scenario Outline: Validate Entry Message
Then User validate message as "Only 4 entries allowed per day"

Scenario Outline: Add Valid New Level Entry
When User enters level entry as <Entry>
When Click on Submit button
Then validate  successful message as "<Validation>"

Examples:
|Entry| Validation|
|5    |Entry was successfully created.|
|-50  |Entry was successfully created.|
|100  |Entry was successfully created.|
|50000|Entry was successfully created.|

Scenario Outline: Add Invalid New Level Entry
When User entered level entry as "<Entries>"
When Clicks on Submit button
Then validate  unsuccessful message as "<Validations>"

Examples:
|Entries|Validations|
|%^a56  |Maximum entries reached for this date.|
