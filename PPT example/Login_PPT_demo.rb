module Screen
  module Android
    class LoginPage < EvernoteApp
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
    class LoginPage < EvernoteApp
        def login(account)
          p account
          raise("account not exists") if account.empty?
          username = account["username"]
          password = account["password"]
          loginAs(username,password)
        end

        def loginAs(username,password)
          selectLink("Sign in")
          set_login_email(username)
          set_login_password(password)
          sign_in
          puts "Log in..."
        end

        def set_login_email(username)
          textfield('Username').send_keys("#{username}")
        end

        def set_login_password(password)
          textfield('Password').send_keys("#{password}")
        end

        def sign_in
          button("Sgin in")
        end
    end
  end
end


class LgoinPage
  def selectLink(link_text)

  end
end