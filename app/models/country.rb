class Country < ActiveRecord::Base
  extend Worldwise::Metadata::Country

  worldwise

  attr_accessible :name, :alternative_names, :translations_attributes,
    :continent_ids,
    :iso_3166_alpha2, :iso_3166_alpha3, :iso_3166_numeric3, :fips_country_code,
    :iana_internet_country_code_tld, :itu_callsign_prefix, :itu_maritime_id,
    :itu_letter_code, :icao_airport_code_prefix, :ioc_country_code,
    :icao_aircraft_registration_prefix, :e212_mobile_country_code,
    :nato_alpha3, :nato_alpha2, :loc_marc_code, :un_license_plate_code,
    :gs1_gtin_prefix, :undp_country_code, :wmo_country_code, :latitude,
    :longitude, :e164_country_code, :e164_national_destination_code_lengths,
    :e164_national_number_lengths, :e164_international_prefix,
    :e164_national_prefix

  translates :name, :alternative_names, fallbacks_for_empty_translations: true

  validates :name, presence: true, uniqueness: true
  validates :iso_3166_alpha2, presence: true, uniqueness: true, length: { is: 2 }
  validates :iso_3166_alpha3, presence: true, uniqueness: true, length: { is: 3 }
  validates :iso_3166_numeric3, presence: true, uniqueness: true, length: { is: 3 }
  #validates :nato_alpha2, presence: false, uniqueness: true, length: { is: 2 } # TODO: add presence: true when we've got the data
  #validates :nato_alpha3, presence: false, uniqueness: true, length: { is: 3 } # TODO: add presence: true when we've got the data

  has_and_belongs_to_many :continents

  acts_as_neighbor

  accepts_nested_attributes_for :translations
end

