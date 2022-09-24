Feature: Validation of AdacinHotel Web Application

  Background: 
    Given User launch AdacinHotel Web Application
    Then User Verify the Login page

  Scenario: TC01_Validation of Payment Page with valid Credit Card Details
    When User enters Valid Username and valid Password
    And click Login Button
    Then User verify the Search Hotel page
    When User select the Location,Hotels,Room Type,Number of Rooms,Check InDate,Check OutDate,Adult PerRoom and Children PerRoom
    And click Search Button
    Then User verify the Select Hotel page
    When User select the Hotel
    And click Continue Button
    Then User verify the Book a Hotel page
    When User enter the FirstName,LastName,BillingAddress and CreditCardNo then Select the CreditCardType,ExpiryDate and enter the CVVNumber
    And Click BookNow Button
    Then User Verify the Booking Confirmation Page.

  Scenario Outline: TC02_Validation of Payment Page with valid Credit Card Details
    When User enters "<userName>" and "<password>"
    And click Login Button
    Then User verify the Search Hotel page
    When User select the "<Location>","<Hotels>","<RoomType>","<NumberofRooms>"and Enter the"<CheckInDate>","<CheckOutDate>"and Select the"<AdultPerRoom>" and "<ChildrenPerRoom>"
    And click Search Button
    Then User verify the Select Hotel page
    When User select the Hotel
    And click Continue Button
    Then User verify the Book a Hotel page
    When User enter the "<FirstName>","<LastName>","<BillingAddress>" and "<CreditCardNo>" and Select the "<CreditCardType>","<ExpiryMonth>""<ExpiryYear>" and enter the "<CVVNumber>"
    And Click BookNow Button
    Then User Verify the Booking Confirmation Page.

    Examples: 
      | userName | password | Location | Hotels         | RoomType | NumberofRooms | CheckInDate | CheckOutDate | AdultPerRoom | ChildrenPerRoom | FirstName | LastName | BillingAddress | CreditCardNo      | CreditCardType | ExpiryMonth | ExpiryYear | CVVNumber |
      | bala0901 | BALA123  | London   | Hotel Sunshine | Standard |             3 | 18/09/2022  | 19/09/2022   |            1 |               0 | Bala      | Kumar    | Chennai        | 78945612336982541 | VISA           |           2 |       2022 |       789 |
      | bala0901 | BALA123  | Sydney   | Hotel Creek    | Standard |             3 | 18/09/2022  | 19/09/2022   |            1 |               0 | Bala      | Kumar    | Chennai        | 78945612336982541 | VISA           |          12 |       2022 |       789 |
      | bala0901 | BALA564  | London   | Hotel Sunshine | Standard |             3 | 18/09/2022  | 19/09/2022   |            2 |               0 | Bala      | Kumar    | Chennai        | 78945612336982541 | VISA           |          10 |       2022 |       745 |
      | bala0901 | BALA123  | London   | Hotel Sunshine | Double   |             3 | 18/09/2022  | 20/09/2022   |            1 |               1 | Bala      | Kumar    | Chennai        | 78945612336982541 | VISA           |           1 |       2022 |       789 |
