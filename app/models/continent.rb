class Continent < ActiveRecord::Base
  worldwise

  attr_accessible :code, :name, :alternative_names, :land_mass_percentage,
    :continent_model_ids, :translations_attributes, :country_ids

  translates :name, :alternative_names, fallbacks_for_empty_translations: true

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :continent_models
  has_and_belongs_to_many :countries

  acts_as_neighbor

  accepts_nested_attributes_for :translations

  ##
  # We add a default scope, filtering continents by the default continent
  # model. During data import we don't have the continent model yet so we add
  # this condition to avoid problems. We could have used a proc instead but
  # that would mean extra DB queries that aren't really necessary since the
  # default continent model doesn't change at runtime.
  #if default_cmid = ContinentModel.find_by_code(Worldwise.default_continent_model).id rescue false
  #  default_scope joins(:continent_models).where("continent_models_continents.continent_model_id = ?", default_cmid)
  #end

  ##
  # Returns the land mass for this continent expressed in +unit+ that can be
  # either +:square_kilometers+ (the default) or +:square_miles+
  def land_mass(unit = :square_kilometers)
    km2 = Worldwise::TOTAL_CONTINENT_LAND_MASS * (land_mass_percentage / 100)
    case unit
    when :square_miles
      km2 * 0.386102
    else
      km2
    end
  end
end
