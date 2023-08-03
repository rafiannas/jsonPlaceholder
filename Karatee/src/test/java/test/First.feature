Feature: Sample API Tests

	Background:
	* url 'https://jsonplaceholder.typicode.com'

  Scenario: GET API 
    Given path '/posts'
    When method GET
    Then status 200
    And print responseStatus
    And print response
    And match response[*].userId != null
		And match each response[*].id == '#number'
		And match each response[*].title == '#string'
		And match each response[*].body == '#string'
	
	