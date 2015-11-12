module Screen
  module Android
    class LoginPage < EvernoteApp
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