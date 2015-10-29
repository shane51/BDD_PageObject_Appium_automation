module Screen
  module Android
    class AllNotesPage < EvernoteAppPage
      def title
       byXpath("//*[@resource-id='com.evernote:id/toolbar']//*[@resource-id='com.evernote:id/title']")
      end
      def createTextNote
        addNote("Text Note")
      end

      def addTextNoteTitle(note_title)
        byName("Note Title").send_keys("#{note_title}")
        #byId("title")
      end

      def addTextNoteContent(note_content)
        byName("Compose your note").send_keys("#{note_content}")
        #byId("text")
      end

      def saveNote
        selectById("check_mark")
      end

      def addNote(option)
        openAddIcon
        selectOptions(option)
      end

      def deleteNote(note_name)
        element = byName(note_name)
        longPress(element)
        longPressMenu("Delete")
      end

      def longPressMenu(option)
        selectOptions(option)
      end

      def confirmAction
        selectByName("OK")
      end

      private

      def openAddIcon
        puts "addIcon is: #{addIconStatus}"
        if addIconStatus == "closed"
          selectById("main_fab_image_view")
        end
      end

      def selectOptions(option)
        selectByName(option)
      end

      def addIconStatus
          "closed"
      end
    end
  end
end


=begin
----toolbar---
 page title:
  xpath: //*[@resource-id='com.evernote:id/toolbar']//*[@text='All Notes']
         //*[@resource-id='com.evernote:id/toolbar']//*[@resource-id='com.evernote:id/title']
 work chat button:
  id: split_custom_frame
 search button:
  id: search
 setting button:
  id: overflow_icon

 menu button:
  id: main_fab_image_view

----content-----
  close button:
   id: dismiss
  show me how:
   name: Show me how

  note month stamp:
   id: list_header_title

  note title:
  xpath: //*[@resource-id='com.evernote:id/snippet_container']//*[@resource-id='com.evernote:id/title']
=end