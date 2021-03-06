Feature:Login
  Background:
    When I go to first user page
    And I fill in "user_login" with "amit"
    And I fill in "user_email" with "amit@heurion.com"
    And I fill in "user_password" with "test123"
    And I fill in "user_password_confirmation" with "test123"
    And I fill in "site_url" with "http://localhost:3000"
    And I press "Create Rling First User"
    Then I should be on login page
  
  Scenario: Login with correct details
    When I go to login
    And I fill in "login" with "amit"
    And I fill in "password" with "test123"
    When I check "Remember me"
    And I press "Login"
    Then I should see "Login successful!" on the page
#    And the "Remember me" checkbox should be checked

    
   Scenario: Logout
     Given I am logged in
     When I go to logout page
     Then I should see "You have been logged out successfully." on the logout page


