require "selenium-webdriver"
require "byebug"

class Page
  def initialize
    Selenium::WebDriver::Chrome::Service.driver_path =  "C:/Users/khaih/Downloads/chromedriver_win32/chromedriver.exe"
    @driver = Selenium::WebDriver.for :chrome
    @driver.manage.add_cookie(name: "jwt-token", value: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hY2NvdW50cy5hd2Vzb21lLXNlcnZpY2VzLm5ldFwvYXBpXC9zb2NpYWxcL2dvb2dsZVwvY2FsbGJhY2siLCJpYXQiOjE2NzI0MTQ4MTIsImV4cCI6MTY3MzAxOTYxMiwibmJmIjoxNjcyNDE0ODEyLCJqdGkiOiJLemxRajloYXlpUFRmUVpQIiwic3ViIjo1MTgwLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3IiwiaWQiOjUxODAsIm5hbWUiOiJOZ28gTmd1eWVuIFRodXkgVHJhbmciLCJlbWFpbCI6Im5nby5uZ3V5ZW4udGh1eS50cmFuZ0BzdW4tYXN0ZXJpc2suY29tIiwiY29tcGFueV9pZCI6MSwibGFuZ3VhZ2UiOiJ2aSIsImZpcnN0X3RpbWUiOjEsInVzZXJfdHlwZSI6MiwiaXNPd25lciI6ZmFsc2UsInJvbGVzIjpbNDYsNzNdLCJkaXZpc2lvbnMiOlsxMjQ4LDEyNDksMTI1MCwxMjUxLDEyNTIsMTI1MywxMjU1LDEyNTgsMTI2MSwxOCwxOV0sInN1Yl9kb21haW4iOiJzdW4tYXN0ZXJpc2siLCJjb21wYW55X3ByaXZhdGVfc2VydmljZXMiOlsiZW1wbG95ZWUiLCJoaXJpbmciLCJjb21wYW55IiwidGltZXNoZWV0Il0sImNvbXBhbnlfcHVibGljX3NlcnZpY2VzIjpbImluc2lnaHQiLCJ0YXNrIiwibGVhcm4iLCJjb3N0cGxhbiJdfQ.JeMFLuXRfqm-wePitNsOth7rDtwTrQenxe8HEVTZEbA")
  end

  def visit(url_path)
    @driver.get url_path
  end

  def find(locator)
    @driver.find_element locator
  end

  def finds(locator)
    @driver.find_elements locator
  end

  def type(locator, text)
    find(locator).send_keys text
  end

  def click(locator)
    find(locator).click
  end

  end

  def is_displayed?(locator)
    begin
      find(locator).displayed?
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end

  def wait_for(seconds = 15)
    Selenium::WebDriver::Wait.new(timeout: seconds).until { yield }
  end

end
