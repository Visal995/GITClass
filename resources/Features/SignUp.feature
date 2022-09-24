Feature: Validation of SignUp Page in Gmail Web Application

  Background: 
    Given User launch Gmail Web Application
  

  Scenario: TC01_Validation of Signup page in gmail
    When User click on the get gmail Button 
   And User enter the firstName,lastName,userName,password and Confirm password 
    And user click Next Button
    Then user verify enter the phone number page displayed 
    And user Enter the Valid Phone Number 
    And user click next Button
    And User enter the verification code
    And click verify Button
  	

 
  