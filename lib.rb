# frozen_string_literal: true

unless defined?(Unreloader)
  require 'rack/unreloader'
  Unreloader = Rack::Unreloader.new(reload: false, autoload: !ENV['NO_AUTOLOAD'])
end

Unreloader.require 'lib/**/*.rb'
require_relative 'models'
