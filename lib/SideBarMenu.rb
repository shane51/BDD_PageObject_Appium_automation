module Screen
  module Android
    class SidebarMenu < EvernoteAppPage
      def goto(option)
        openSideBarMenu
        selectOptions(option)
      end

      def openSideBarMenu
        if sideBarStatus == "closed"
          selectByName("Navigate up")
        end
      end

      def selectOptions(option)
        selectByName(option)
      end

      private
      def sync_contents
        selectById("sync_text")
      end

      def sideBarStatus
        if exists { byId("username") }
          "open"
        else
          "closed"
        end
      end

    end
  end
end


=begin
Menu button:

  name: Navigate up

avatar header:
  id: avatar_image_view
  id: username

side bar options:
  name: Work Chat
  name: All Notes
  name: Notebooks
  name: Market
  name: Explore Evernote
  name: Settings
  name: Upgrade Account
  id: sync_text
=end