class TestWorldwise < ActiveRecord::Base
  attr_accessible :name, :description
  worldwise
end

class TestNeighborship < ActiveRecord::Base
  worldwise
  acts_as_neighbor
end
