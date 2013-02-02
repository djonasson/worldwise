class Country < ActiveRecord::Base
  worldwise

  attr_accessible :name, :alternative_names, :translations_attributes,
    :iso_3166_alpha2, :iso_3166_alpha3, :iso_3166_numeric3,
    :ioc_country_code, :latitude, :longitude, :continent_ids, :address_format,
    :e164_country_code, :e164_national_destination_code_lengths,
    :e164_national_number_lengths, :e164_international_prefix, :e164_national_prefix

  translates :name, :alternative_names, fallbacks_for_empty_translations: true

  validates :name, presence: true, uniqueness: true
  validates :iso_3166_alpha2, presence: true, uniqueness: true
  validates :iso_3166_alpha3, presence: true, uniqueness: true
  validates :iso_3166_numeric3, presence: true, uniqueness: true

  has_and_belongs_to_many :continents

  acts_as_neighbor

  accepts_nested_attributes_for :translations
end
