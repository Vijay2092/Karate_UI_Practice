
# @debug
Feature: ui testing for amazon

Background:
    Given driver 'https://www.amazon.in/'

Scenario: Login function is working 

    When click('#nav-link-accountList')
    And input("#ap_email", "patilvijaysing2092@gmail.com")
    And click(".a-button-input")
    And input("//input[@id='ap_password']" , "Vijay@6767")
    # And click("signInSubmit")
    # Then input(".a-input-text.a-span12.auth-autofocus.auth-required-field", "vishal@123")
    And click("#signInSubmit")
    And waitFor(driver.title)
    * print driver.title
    
    
