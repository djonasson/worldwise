class Continent < ActiveRecord::Base
  attr_accessible :code, :name, :alternative_names, :land_mass_percentage, :continent_model_ids, :translations_attributes

  translates :name, :alternative_names, fallbacks_for_empty_translations: true

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :continent_models

  accepts_nested_attributes_for :translations

  #default_scope proc { ContinentModel.find_by_code(Worldwise.default_continent_model).continents }
  default_scope joins(:continent_models).where("continent_models_continents.continent_model_id = ?", ContinentModel.find_by_code(Worldwise.default_continent_model).id)
end
