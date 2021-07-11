# frozen_string_literal: true

# This module contains login helpers methods
module LoginHelper
  def login_test_user
    @login_page = LoginPage.new
    @login_page.load

    @login_page.login_field.set(ENV['EMAIL'])
    @login_page.password_field.set(ENV['PASSWORD'])
    @login_page.login_button.click
    begin
      expect(page).to have_content 'Go ahead. Find something to Smart View!'
    rescue RSpec::Expectations::ExpectationNotMetError
      retry
    end

    @inf_page = InfPage.new
    @inf_page.load
  end

  def choise_device
    begin
      @inf_page.devise_table.trs[2].link1.click
      rescue Selenium::WebDriver::Error::StaleElementReferenceError
        retry
    end
  end





end

World(LoginHelper)
