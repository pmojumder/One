Feature: Create and Retrieve Booking with Basic Auth

  Background: 
    * url 'https://restful-booker.herokuapp.com'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='

  Scenario: Create a new booking
    Given path '/booking'
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And request
      """
      {
        "firstname": "John",
        "lastname": "Doe",
        "totalprice": 150,
        "depositpaid": true,
        "bookingdates": {
          "checkin": "2024-03-25",
          "checkout": "2024-03-30"
        },
        "additionalneeds": "Breakfast"
      }
      """
    When method POST
    Then status 200
    And print response
