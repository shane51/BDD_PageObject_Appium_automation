module Screen
  module Android
    class SettingPage < EvernoteAppPage
      def confirmAction(option)
        case option.downcase
          when "sign out"
            puts "sign out"
            selectByName("Yes")
          when "delete"
            puts "ok"
            selectByName("OK")
          else
            puts "confirmation button name not recognized"
        end
      end
    end
  end
end
