require 'rubygems'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'selenium/webdriver'



Capybara.default_selector = :css



Capybara.default_driver = :selenium
#Capybara.default_driver = :poltergeist

Capybara.register_driver :selenium do |app|
	Capybara::Selenium::Driver.new(app,:browser => :internet_explorer)
end

Capybara.app_host = 'http://www.baidu.com'

Capybara.run_server = false
