# This migration comes from worldwise_engine (originally 20130201161328)
class CreateNeighborships < ActiveRecord::Migration
  def change
    create_table :neighborships do |t|
      t.integer :owner_id
      t.string :owner_type
      t.integer :neighbor_id
      t.string :neighbor_type
      t.timestamps
    end
  end
end
