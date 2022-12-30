require_relative 'pageedx'
class CreateCourse < Page

  def initialize
    super
    visit "https://sun-asterisk.awesome-services.net/learn/en/manager/course/new/general/?c_t=online"
    # raise "Login page not ready" unless
    #   is_displayed?(Login_Form)
  end

  def input_course_infor
    type({xpath: "//*[@id="next"]/div/main/div/form/div[3]/div[1]/label/div/input"}, "ten course")
  end
  
  createCourse = CreateCourse.new
  createCourse.input_course_infor
  
end