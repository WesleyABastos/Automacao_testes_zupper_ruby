# frozen_string_literal: true

require 'capybara/cucumber'
require 'rspec/expectations'
require 'selenium-webdriver'

Capybara.default_max_wait_time = Integer(ENV.fetch('CAPYBARA_WAIT_TIME', 15))

# Evita usar um chromedriver antigo instalado globalmente. O Selenium Manager
# seleciona/baixa o driver compatível com o Chrome da máquina para esta execução.
ENV['PATH'] = ENV.fetch('PATH', '').split(File::PATH_SEPARATOR).reject { |directory|
  File.exist?(File.join(directory, 'chromedriver.exe'))
}.join(File::PATH_SEPARATOR)

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--window-size=1440,900')
  options.add_argument('--disable-notifications')
  options.add_argument('--headless=new') if ENV['HEADLESS'] == 'true'
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :chrome
Capybara.app_host = 'https://www.zupper.com.br'
