Feature: Update Booking with Basic Auth

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

  Scenario: Update an existing booking
    Given path 'booking', 340  # Ensure this ID exists in your system
    And request
    """
    {
      "firstname": "Jane",
      "lastname": "Smith",
      "totalprice": 200,
      "depositpaid": false,
      "bookingdates": {
        "checkin": "2024-04-01",
        "checkout": "2024-04-05"
      },
      "additionalneeds": "Dinner"
    }
    """
    When method PUT
    Then status 200
    And print response
