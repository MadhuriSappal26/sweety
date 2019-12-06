Feature: Login Feature

Background:
Given User navigates to Login Page

Scenario Outline:User clicks on login button without entering details
When  User clicks on Login button
Then  System validates with message as "Invalid email or password."

Scenario Outline:User enters valid email id and invalid password
When  User enter email id As "<EmailId>"
When  User enter Password As "<Password>"
When User click on Login button
Then  System validate with message as "<Validation>"

Examples:
|EmailId                     |Password              |Validation                 |
|abc@gmail.com               |hello                 |Invalid email or password. |
|abc@gmail.com               |                      |Invalid email or password.|


Scenario Outline:User clicks on Levels menu without logging in
When User Clicks Levels menu
Then User see the message as "You need to sign in or sign up before continuing."

Scenario Outline:User clicks on Reports menu without logging in
When User Clicks Reports menu
Then User sees the message as "You need to sign in or sign up before continuing."


Scenario: Visit the Login Page
When I submit username and password
When I click on Login button
Then I see the message as "Signed in successfully."
