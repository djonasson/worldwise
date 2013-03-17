ActiveRecord::Migration.verbose = false

ActiveRecord::Schema.define do

  create_table :test_worldwises, force: true do |t|
    t.string :code
    t.string :description
    t.timestamps
  end

  create_table :test_worldwise_translations, force: true do |t|
    t.integer :test_worldwise_id
    t.string  :locale
    t.string  :name
    t.timestamps
  end

  create_table :test_neighborships, force: true do |t|
    t.string :name
    t.timestamps
  end

end
