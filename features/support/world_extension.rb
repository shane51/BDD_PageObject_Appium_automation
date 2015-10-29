Dir.glob(File.join(File.dirname(__FILE__), '..', '..', 'lib','**/*.rb')) {|file| require_relative file}


module AndroidPageDomain
  def test_account
    json = File.read(File.join(File.dirname(__FILE__),'..', '..', 'test_data','test_account.json'))
    @account = JSON.parse(json)
  end
  def login_page
    @loginPage = Screen::Android::LoginTab.new
  end

  def all_notes_page
    @allNotesPage = Screen::Android::AllNotesPage.new
  end

  def sidebar_menu
    @sideBarMenu = Screen::Android::SidebarMenu.new
  end

  def setting_page
    @settingPage = Screen::Android::SettingPage.new
  end
end

module IosPageDomain
  def test_account
    json = File.read(File.join(File.dirname(__FILE__),'..', '..', 'test_data','test_account.json'))
    @account = JSON.parse(json)
  end
  def login_page
    @loginPage = Screen::IOS::LoginPage.new
  end
end
World(AndroidPageDomain)