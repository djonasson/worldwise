class Continent < ActiveRecord::Base
  attr_accessible :code, :name, :alternative_names, :land_mass_percentage, :continent_model_ids, :translations_attributes

  translates :name, :alternative_names, fallbacks_for_empty_translations: true

  validates :code, presence: true
  validates :name, presence: true

  has_and_belongs_to_many :continent_models

  accepts_nested_attributes_for :translations
end
