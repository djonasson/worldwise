# This migration comes from symmetry_engine (originally 20130323091106)
class AddRelationshipNameToSymmetricRelationships < ActiveRecord::Migration
  def change
    add_column :symmetric_relationships, :relationship_name, :string
  end
end
