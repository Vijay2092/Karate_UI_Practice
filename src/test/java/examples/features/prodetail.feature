# @debug
Feature:product detailpage validation 

Scenario: click on product and add to cart
    Given driver "https://www.amazon.in/s?k=deo&rh=p_72%3A1318476031&dc&crid=3AFYDZWASS1QI&qid=1711479600&rnid=1318475031&sprefix=deo%2Caps%2C220&ref=sr_nr_p_72_1&ds=v1%3A89wlVCZvLFZV0RKZeFskK5086XOdeAkKK3SMYHCbqy0"
    * delay(4000)
    # And click ("//span[contains(text() ,'NIVEA MEN Fresh Active Original 48 Hours Deodorant, 150 ml')]")
    * mouse('xpath', "//span[contains(text() ,'NIVEA MEN Fresh Active Original 48 Hours Deodorant, 150 ml')]")
