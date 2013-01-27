require "globalize3"

require "worldwise/engine"
require "worldwise/active_record"

module Worldwise
  include ActiveSupport::Configurable

  # The default continent model we use when retrieving continents.
  # Can be one of: [:CM4, :CM5, :CM6A, :CM6E, :CM7]
  config.default_continent_model = :CM7
  config_accessor :default_continent_model
end
