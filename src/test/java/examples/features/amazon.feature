@debug
Feature: Open Amazon and Add Product to Cart

Background:
#   * configure driver = { type: 'chrome' }
  Given driver 'https://www.amazon.in/'
  * maximize()
  * delay(2000)

Scenario: Search for a Product
And input("//input[@id='twotabsearchtextbox']", "deo")
    * screenshot()
  * delay(2000)
And click("//input[@id='nav-search-submit-button']")
  * delay(2000)
Then match driver.title == "Amazon.in : deo"
 * delay(2000)
And click("//section[@aria-label='4 Stars & Up']") 
  * delay(3000)  
Then match driver.title == "Amazon.in: Deo - 4 Stars & Up"
* delay(4000)
And click("//span[contains(text() ,'NIVEA MEN Fresh Active Original 48 Hours Deodorant, 150 ml')]")
# * click("(//div[@class='a-section a-spacing-base'])[4]")
# And click("(//div[@class='a-section a-spacing-base'])[4]")
#     * delay(4000)
# * def locator = "(//div[@class='a-section a-spacing-base'])[4]"
# * retry(5, 2000).click(locator)
#    * delay(2000)
  # Switch to the new window or tab
  * switchPage('Buy NIVEA MEN Fresh Active Original 48 Hours Deodorant, 150 ml Online at Low Prices in India - Amazon.in')
  And click("//input[@id='add-to-cart-button']")
  * delay(2000)
  And click("//a[contains(text(),'Go to Cart')]")
  * delay(5000)

  * def pdfform = pdf({'orientation': 'landscap'})
  * karate.write(pdfform , "pdfdoc.pdf")
  


# And click ("(//span[contains(text(),'Axe Signature Mysterious No Gas Deodorant Bodyspray For Men 154 ml')])[1]")
# *  def tit = driver.title
#  * print tit



# Scenario: select product
#    * click("//section[@aria-label='4 Stars & Up']")
#    * click ("(//div[@class='a-section a-spacing-base'])[4]")

  





