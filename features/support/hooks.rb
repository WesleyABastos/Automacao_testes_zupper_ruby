# frozen_string_literal: true

require 'fileutils'

Before do
  @busca = BuscaPage.new
end

After do |scenario|
  next unless scenario.failed?

  FileUtils.mkdir_p('logs')
  page.save_screenshot("logs/falha-#{scenario.name.gsub(/[^0-9A-Za-z]+/, '-')}.png")
  page.save_page("logs/falha-#{scenario.name.gsub(/[^0-9A-Za-z]+/, '-')}.html")
end
