# @debug
Feature:login test
  This is login test

Scenario:Login with valid login creadentials
    Given driver 'https://www.saucedemo.com/'
    And input("//*[@id ='user-name']","standard_user")
    * delay(2000)
    * clear("//*[@id='user-name']")    
    * delay(2000)
    And input("//*[@id ='user-name']","standard_user")
    * focus("//*[@id='password']")
    * delay(2000)
    Given input("//*[@id='password']", "secret_sauce")  
    * delay(2000)  
    When click("//*[@id ='login-button']")
    * delay(2000)