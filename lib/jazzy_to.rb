require 'jazzy_to/version'
require 'jazzy_to/configuration'
require 'jazzy_to/configuration.rb'
require 'jazzy_to/content_finder.rb'
require 'jazzy_to/view_helpers.rb'
require 'jazzy_to/railtie.rb'
require 'jazzy_to/models/jazzy'

module JazzyTo
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration || Configuration.new
  end

  def self.configure
    self.configuration ||= Configure.new

    yield(configuration)
  end
end
