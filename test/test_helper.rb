# # Configure Rails Environment
# ENV["RAILS_ENV"] = "test"

# require File.expand_path("../dummy/config/environment.rb",  __FILE__)
# require "rails/test_help"

# Rails.backtrace_cleaner.remove_silencers!

# # Load support files
# Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# # Load fixtures from the engine
# if ActiveSupport::TestCase.method_defined?(:fixture_path=)
#   ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
# end

# Load the normal Rails helper
#require File.expand_path(File.dirname(__FILE__) + '/../../test/test_helper')

# Ensure that we are using the temporary fixture path
#Engines::Testing.set_fixture_path

#####
# require 'rubygems'
# require 'bundler'
# begin
#   Bundler.setup(:default, :development)
# rescue Bundler::BundlerError => e
#   $stderr.puts e.message
#   $stderr.puts "Run `bundle install` to install missing gems"
#   exit e.status_code
# end

require 'test/unit'
require 'active_record'
require "#{File.dirname(__FILE__)}/../lib/acts_as_silent_list/engine"
#require "#{File.dirname(__FILE__)}/../init"

