class TestWorldwise < ActiveRecord::Base
  worldwise
end

class TestNeighborship < ActiveRecord::Base
  worldwise
  acts_as_neighbor
end
