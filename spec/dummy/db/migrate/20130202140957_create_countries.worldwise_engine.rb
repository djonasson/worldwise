# This migration comes from worldwise_engine (originally 20130127164054)
class CreateCountries < ActiveRecord::Migration

  def up
    create_table :countries do |t|
      t.string :iso_3166_alpha2
      t.string :iso_3166_alpha3
      t.string :iso_3166_numeric3

      t.string :fips_country_code
      t.string :iana_internet_country_code_tld
      t.string :itu_callsign_prefix
      t.string :itu_maritime_id
      t.string :itu_letter_code
      t.string :icao_airport_code_prefix
      t.string :ioc_country_code
      t.string :icao_aircraft_registration_prefix
      t.string :e212_mobile_country_code
      t.string :nato_alpha3
      t.string :nato_alpha2
      t.string :loc_marc_code
      t.string :un_license_plate_code
      t.string :gs1_gtin_prefix
      t.string :undp_country_code
      t.string :wmo_country_code

      t.text :address_format

      t.string :e164_country_code
      t.string :e164_national_destination_code_lengths
      t.string :e164_national_number_lengths
      t.string :e164_international_prefix
      t.string :e164_national_prefix

      t.string :latitude
      t.string :longitude

      #t.decimal :land_mass_percentage, precision: 4, scale: 2

      t.timestamps
    end
    Country.create_translation_table!(
      name: :string,
      alternative_names: :string
    )
    create_table :continents_countries do |t|
      t.references :continent
      t.references :country
    end
  end

  def down
    drop_table :continents_countries
    drop_table :countries
    Continent.drop_translation_table!
  end

end
