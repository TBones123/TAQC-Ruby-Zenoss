feature 'unit test1' do
  let(:login_page) { LoginPage.new }
  let(:graps_page) { GraphsPage.new }


  before(:each) do
    # Selenium::WebDriver.logger.level = :debug
    login_page.load
  end

  describe 'Graps page device' do
    scenario "select graps section" do
      login_page.login_field.set 'testuser@test.com'
      login_page.password_field.set 'D0gP0und!'
      login_page.login_button.click
      sleep 5
      visit('https://test1896.zenoss.io/cz0/zport/dmd/Devices/Server/Linux/devices/10.128.15.200/devicedetail#deviceDetailNav:device_graphs')
      sleep 10
      graps_page.graphs_section
    end
  end
end


