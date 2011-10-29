TEST_DATA_DIR = "./features/support/test_data"
$: << File.dirname(__FILE__)+'/../../lib'

WEB_DRIVER = ( ENV['WEB_DRIVER'] || :firefox ).to_sym
require 'watir-webdriver'
require 'watir-page-helper'
require 'rspec'
require 'pages.rb'
require 'browser.rb'

ENV['DISPLAY'] = ":99.0" if ENV['TRAVIS']

include Browser

Spinach.hooks.after_scenario { Browser::BROWSER.clear_cookies }
Spinach.hooks.after_run { Browser::BROWSER.close }