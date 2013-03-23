class TestWorldwise < ActiveRecord::Base
  translates :name, fallbacks_for_empty_translations: true
  attr_accessible :code, :name, :description, :translations_attributes
  accepts_nested_attributes_for :translations
  worldwise
end

class TestNeighborship < ActiveRecord::Base
  worldwise
  symmetric_relationship :neighbors, polymorphic_relationship_name: :neighborships
end
