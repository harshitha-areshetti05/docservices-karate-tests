Feature: Web scraper

Scenario: Verify home, payment, and reports pages
  * driver 'http://localhost:8080'
  * waitFor('#home-description')
  * match driver.text('h1') == 'Welcome to Doc Services Home Page'
  * match driver.text('#home-description') contains 'main landing page'
  
  * click("a[href='/payment']")
  * waitFor('#payment-description')
  * match driver.text('#payment-description') contains 'payment related'

  * click("a[href='/reports']")
  * waitFor('#reports-description')
  * match driver.text('#reports-description') contains 'reports'
