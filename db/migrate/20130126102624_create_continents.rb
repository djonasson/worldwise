class CreateContinents < ActiveRecord::Migration

  def up
    create_table :continents do |t|
      t.string :code
      t.decimal :land_mass_percentage, precision: 4, scale: 2
    end
    Continent.create_translation_table!(
      name: :string,
      alternative_names: :string
    )
    create_table :continent_models_continents do |t|
      t.references :continent_model
      t.references :continent
    end
  end

  def down
    drop_table :continents
    Continent.drop_translation_table!
  end

end
