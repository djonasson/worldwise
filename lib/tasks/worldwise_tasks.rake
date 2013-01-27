# encoding: UTF-8

require 'active_record/fixtures'

DATA_DIR = Worldwise::Engine.root.join('db/data')

namespace :worldwise do

  namespace :load_data do

    desc "Import all data"
    task all: :environment do
      import_continent_models
      import_continents
    end

    desc "Import Continent Models"
    task continent_models: :environment do
      import_continent_models
    end

    desc "Import Continents"
    task continents: :environment do
      import_continents
    end

  end

end

def import_continent_models
  seed_file = File.join(DATA_DIR, 'continent_models.yml')
  #ContinentModel.create(YAML::load_file(seed_file))
  YAML::load_file(seed_file).each do |record|
    puts '@@@ ' + record.inspect
    ContinentModel.create_or_update(record)
  end

  #ActiveRecord::Fixtures.create_fixtures(DATA_DIR, ['continent_models'])
end

def import_continents
  seed_file = File.join(DATA_DIR, 'continents.yml')
  #Continent.create(YAML::load_file(seed_file))
  YAML::load_file(seed_file).each do |record|
    puts '@@@ ' + record.inspect
    Continent.create_or_update(record)
  end
  #ActiveRecord::Fixtures.create_fixtures(DATA_DIR, ['continents', 'continent/translations'])
end

#File.open("#{DATA_DIR}/continent_models_test.yml", 'w') do |file|
#  YAML::dump(Worldwise::ContinentModel.all, file)
#end
#
