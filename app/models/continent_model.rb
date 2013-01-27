class ContinentModel < ActiveRecord::Base
  attr_accessible :code, :name, :description, :continent_ids, :translations_attributes

  translates :name, :description, fallbacks_for_empty_translations: true

  validates :code, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  has_and_belongs_to_many :continents

  accepts_nested_attributes_for :translations
end
