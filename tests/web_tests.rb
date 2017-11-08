require 'selenium-webdriver'

describe 'reloj web' do
    it 'suena la alarma' do
        browser = Selenium::WebDriver.for :chrome
        browser.get "http://localhost:9292/"

        5.times do |i|
            browser.find_element(:id,'button_plus_hour').click
        end

        25.times do |i|
            browser.find_element(:id,'button_plus_min').click
        end     

        browser.find_element(:id,'set_alarm_button').click

        wait = Selenium::WebDriver::Wait.new(timeout: 60)
        wait.until { browser.find_element(id: "stop_alarm_button").displayed? }
        
        sonando = browser.find_element(:id,'wakeup').text
        expect(sonando).to eq "Sonando"
    end
  end

