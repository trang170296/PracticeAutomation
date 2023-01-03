require_relative 'pageedx'
class CreateCourse < Page

  

  def initialize
    super
    visit "https://accounts:BvY4g5WCJA@accounts.awesome-services.net/login"
    sleep (2)
    click(id: "details-button")
    sleep (2)
    click(id: "proceed-link")
    sleep (2)
    visit "https://sun-asterisk:HupuxHm9AC@sun-asterisk.awesome-services.net/learn/en/manager/course/new/general/?c_t=online"
    sleep (2)
    click(id: "details-button")
    sleep (2)
    click(id: "proceed-link")
    sleep (2)
    @driver.manage.add_cookie(name: "jwt_token", value: "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hY2NvdW50cy5hd2Vzb21lLXNlcnZpY2VzLm5ldFwvYXBpXC9zb2NpYWxcL2dvb2dsZVwvY2FsbGJhY2siLCJpYXQiOjE2NzI3MTg5ODYsImV4cCI6MTY3MzMyMzc4NiwibmJmIjoxNjcyNzE4OTg2LCJqdGkiOiI4ckVtQnlDYlByMjQ4SlpZIiwic3ViIjo1MTgwLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3IiwiaWQiOjUxODAsIm5hbWUiOiJOZ28gTmd1eWVuIFRodXkgVHJhbmciLCJlbWFpbCI6Im5nby5uZ3V5ZW4udGh1eS50cmFuZ0BzdW4tYXN0ZXJpc2suY29tIiwiY29tcGFueV9pZCI6MSwibGFuZ3VhZ2UiOiJ2aSIsImZpcnN0X3RpbWUiOjEsInVzZXJfdHlwZSI6MiwiaXNPd25lciI6ZmFsc2UsInJvbGVzIjpbNDYsNzNdLCJkaXZpc2lvbnMiOlsxMjQ4LDEyNDksMTI1MCwxMjUxLDEyNTIsMTI1MywxMjU1LDEyNTgsMTI2MSwxOCwxOV0sInN1Yl9kb21haW4iOiJzdW4tYXN0ZXJpc2siLCJjb21wYW55X3ByaXZhdGVfc2VydmljZXMiOlsiZW1wbG95ZWUiLCJoaXJpbmciLCJjb21wYW55IiwidGltZXNoZWV0Il0sImNvbXBhbnlfcHVibGljX3NlcnZpY2VzIjpbImluc2lnaHQiLCJ0YXNrIiwibGVhcm4iLCJjb3N0cGxhbiJdfQ.4EczYmG3HcB-s4l8uvj0mJMwQ1-zu6I96Lmg1ttsoyc", domain: ".awesome-services.net")     
    visit "https://sun-asterisk.awesome-services.net/learn/en/manager/course/new/general/?c_t=online"
    sleep (2)
    # raise "Login page not ready" unless
    #   is_displayed?(Login_Form)
  end

  def input_course_infor
    input_fields = finds(css: "w-full.border-none")
    type(input_fields[1], "ten course")
   end
end

  
createCourse = CreateCourse.new
createCourse.input_course_infor
