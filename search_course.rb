require_relative 'pageedx'
class LoginPage < Page

  def initialize
    super
    visit "https://<accounts>:<BvY4g5WCJA>@https://accounts.awesome-services.net/login"
    # raise "Login page not ready" unless
    #   is_displayed?(Login_Form)
  end

  def login(email, password)
    type(id: email, email)
    type(id: password, password)
    click(clas: bg-default)
  end 

  def search_course_name
    send_keys(xpath: //*[@id="__next"]/div/header/div/div/form/div/input, "abc",:enter)
  end

  
end

