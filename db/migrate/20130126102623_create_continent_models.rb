class CreateContinentModels < ActiveRecord::Migration
  def up
    create_table :continent_models do |t|
      t.string :code
      t.timestamps
    end
    ContinentModel.create_translation_table!(
      name: :string,
      description: :text
    )
  end

  def down
    drop_table :continent_models
    ContinentModel.drop_translation_table!
  end
end
