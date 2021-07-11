Feature: user can choice device
  We can choice device

  Background:
    Given that the user is logged in
      Scenario: click device
        When I click device
          Then I should see device overview
