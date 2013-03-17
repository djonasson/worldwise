require "globalize3"
require "symmetry"

require "worldwise/engine"

module Worldwise
  include ActiveSupport::Configurable

  # The total land area of all continents (in km2)
  TOTAL_CONTINENT_LAND_MASS = 148647000

  ## The default continent model we use when retrieving continents.
  ## Can be one of: [:CM4, :CM5, :CM6A, :CM6E, :CM7]
  #config.default_continent_model = :CM7
  #config_accessor :default_continent_model

  autoload :ActiveRecord, 'worldwise/active_record'
  autoload :Metadata, 'worldwise/metadata'
end

ActiveRecord::Base.extend(Worldwise::ActiveRecord::Worldwise)
