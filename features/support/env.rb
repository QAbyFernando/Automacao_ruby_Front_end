require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'site_prism'
require 'site_prism/all_there'
require 'rspec'
require 'rspec/expectations'
require_relative 'page.initialize.rb'
include  RSpec::Matchers

Environment = ENV['URL']

World(Pages)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome  # Corrigido aqui
  config.app_host = Environment
  config.default_max_wait_time = 5
end
