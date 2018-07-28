Feature: greeter says hello

  In onder to start learning RSpec and Cucumber
  As a reader of The RSpec Book
  I want a greeter to say Hello

  Scenario: greeter says hello
    Given a greeter
    When I send it the greet message
    Then I expect to see "Hello Cucumber!"
