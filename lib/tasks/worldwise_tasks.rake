# encoding: UTF-8

require 'active_record/fixtures'

DATA_DIR = Worldwise::Engine.root.join('db/data')

namespace :worldwise do

  namespace :load_data do
    desc "Import all data"
    task all: :environment do
      import_continent_models
      import_continents
      import_countries
    end

    desc "Import Continent Models"
    task continent_models: :environment do
      import_continent_models
    end

    desc "Import Continents"
    task continents: :environment do
      import_continents
    end

    desc "Import Countries"
    task countries: :environment do
      import_countries
    end
  end

end

def import_continent_models
  puts "\n"; print "Loading Continent Models: "
  seed_file = File.join(DATA_DIR, 'continent_models.yml')
  YAML::load_file(seed_file).each do |record|
    print '.' #+ record.inspect
    ContinentModel.create_or_update(record)
  end
end

def import_continents
  Continent.class_eval do
    def neighbor_ids=(ids)
      write_attribute(:neighbor_ids, ids.select { |i| Continent.find(i) rescue false })
    end
  end

  puts "\n"; print "Loading Continents: "
  seed_file = File.join(DATA_DIR, 'continents.yml')
  YAML::load_file(seed_file).each do |record|
    print '.' #+ record.inspect
    Continent.create_or_update(record)
  end
end

def import_countries
  puts "\n"; print "Loading Countries: "
  seed_file = File.join(DATA_DIR, 'countries.yml')
  YAML::load_file(seed_file).each do |record|
    print '.' #+ record.inspect
    Country.create_or_update(record)
  end
end

#File.open("#{DATA_DIR}/continent_models_test.yml", 'w') do |file|
#  YAML::dump(Worldwise::ContinentModel.all, file)
#end
