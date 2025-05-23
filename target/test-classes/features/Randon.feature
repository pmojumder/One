Feature: Get Booking Details Try

  Scenario: Retrieve booking details by ID Try
    Given url 'https://restful-booker.herokuapp.com/booking'
    When method GET
    Then status 200
    And print response
    
