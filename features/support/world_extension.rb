Dir.glob(File.join(File.dirname(__FILE__), '..', '..', 'lib','**/*.rb')) {|file| require_relative file}


module KnowsTheDomain
  def test_account
    json = File.read(File.join(File.dirname(__FILE__),'..', '..', 'test_data','test_account.json'))
    @account = JSON.parse(json)
  end
  def login_page
    @loginPage = LoginPage.new
  end
end
World(KnowsTheDomain)