require "selenium-webdriver"
require "byebug"

class Page
  def initialize
    #Selenium::WebDriver::Chrome::Service.driver_path =  "C:/Users/khaih/Downloads/chromedriver_win32/chromedriver.exe"
    Selenium::WebDriver::Chrome::Service.driver_path =  "/home/ngo.n.t.trang/Documents/Trang Ngo/03. Automation Software Testing-20220810T031853Z-001/project/driver/chromedriver_linux64/chromedriver"
    @driver = Selenium::WebDriver.for :chrome
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
