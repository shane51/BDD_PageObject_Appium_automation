
find_element(:name, "SIGN IN")
find_element(:id, "landing_username" ).send_keys("demo")
find_element(:id, "landing_login_password" ).sed_keys("pwd")
find_element(:id, "landing_sign_in_button" ).click
sleep 10
find_element(:name, "Navigate up").click
find_element(:name, "All Notes").click
find_element(:id, "main_fab_image_view").click
sleep 10
find_element(:name, "Text Note").click
find_element(:name, "Note Title").send_keys("NEW NOTE")




login_page.login("demo","pwd")
sidebar_menu.goto("All Notes")
all_notes_page.createTextNote
all_notes_page.all_notes_page.addTextNoteTitle("NEW NOTE")