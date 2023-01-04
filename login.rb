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
end
