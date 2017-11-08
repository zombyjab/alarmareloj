require 'selenium-webdriver'

class Browser
    def self.open(caps)
        Selenium::WebDriver.for(:remote,
        :url => "https://angelnunezkleer:452005f0-d069-407b-8973-cde1d9c6c623@ondemand.saucelabs.com:443/wd/hub",
        :desired_capabilities => caps)
    end
end