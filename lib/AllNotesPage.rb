module Screen
  module Android
    class AllNotesPage < EvernoteAppPage
      def title
       # byXpath("//*[@resource-id='com.evernote:id/toolbar']//*[@resource-id='com.evernote:id/title']")
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