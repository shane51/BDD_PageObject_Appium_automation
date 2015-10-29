module Screen
  module Android
    class LoginPage < EvernoteAppPage
      def skip_login_animation
        sleep 10
      end
    end

    class RegisterTab < LoginPage
      def registerAs(username,password)
        selectTab("CREATE ACCOUNT")
        set_register_email(username)
        set_register_password(password)
        create_account
        puts "Registering..."
      end

      def set_register_email(username)
        byId("landing_email").send_keys("#{username}")
      end

      def set_register_password(password)
        byId("landing_password").send_keys("#{password}")
      end

      def create_account
        selectById("landing_register_button")
      end
    end

    class LoginTab < LoginPage
      def login(account)
        p account
        raise("account not exists") if account.empty?
        username = account["username"]
        password = account["password"]

        loginAs(username,password)
      end

      def loginAs(username,password)
        selectTab("SIGN IN")
        set_login_email(username)
        set_login_password(password)
        sign_in
        puts "Log in..."
      end

      def set_login_email(username)
        byId("landing_username").send_keys("#{username}")
      end

      def set_login_password(password)
        byId("landing_login_password").send_keys("#{password}")
      end

      def sign_in
        selectById("landing_sign_in_button")
      end
    end
  end
end

module Screen
  module IOS
    class LoginPage < EvernoteAppPage
    end
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
  - id: landing_register_button    (text: Start using Evernote)

"SIGN IN" Tab
  - id: landing_username
  - id: landing_login_password
  - id: landing_show_password
  - id: landing_sign_in_button
  - id: landing_service_text
  - id: landing_reset_password



=end