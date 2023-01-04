require "selenium-webdriver"

class Page
  def initialize
    #Selenium::WebDriver::Chrome::Service.driver_path =  "C:/Users/khaih/Downloads/chromedriver_win32/chromedriver.exe"
    Selenium::WebDriver::Chrome::Service.driver_path =  "/home/ngo.n.t.trang/Documents/Trang Ngo/03. Automation Software Testing-20220810T031853Z-001/project/driver/chromedriver_linux64/chromedriver"
    @driver = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new(timeout: 5)
  end

  def visit(url_path)
    @driver.get url_path
  end

  def find(locator)
    @wait.until { @driver.find_element(locator).displayed? }
    @driver.find_element locator
  end

  def finds(locator)
    @wait.until { @driver.find_element(locator).displayed? }
    @driver.find_elements locator
  end

  def find_of(p_locator,c_locator)
    p_locator.find_element(c_locator)
  end

  def finds_of(p_locator,c_locator)
    p_locator.find_elements(c_locator)
  end

  def type(locator, text)
    find(locator).send_keys text
  end

  def click(locator)
    find(locator).click
  end

  def type_of(p_locator,c_locator, text)
    find(p_locator).find_element(c_locator).send_keys text
  end

  def click_of(p_locator,c_locator)
    find(p_locator).find_element(c_locator).click
  end

  def is_displayed?(locator)
    begin
      find(locator).displayed?
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end

end
