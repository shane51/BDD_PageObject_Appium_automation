class LoginPage < EvernoteAppPage
  def registerAs(username,password)
      selectTab("CREATE ACCOUNT")
      byId("landing_email").send_keys("#{username}")
      byId("landing_password").send_keys("#{password}" + "\n")

      puts "Registering..."
  end

  def loginAs(username,password)
      selectTab("SIGN IN")
      byId("landing_username").send_keys("#{username}")
      byId("landing_login_password").send_keys("#{password}" + "\n")

      puts "Log in..."
  end
end


=begin
Login page structures:

id: landing_animated_explanation

Tabs:
  - text: CREATE ACCOUNT
  - text: SIGN IN

"CREATE ACCOUNT" Tab
  - id: landing_email
  - id: landing_password
  - id: landing_show_password
  - id: landing_disclaimer
  - id: landing_register_button

"SIGN IN" Tab
  - id: landing_username
  - id: landing_login_password
  - id: landing_show_password
  - id: landing_sign_in_button
  - id: landing_service_text
  - id: landing_reset_password



=end
