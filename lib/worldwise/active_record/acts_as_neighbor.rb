module Worldwise
  module ActiveRecord
    module ActsAsNeighbor
      def acts_as_neighbor
        has_many :neighborships, as: :owner
        has_many :neighbors, through: :neighborships, as: :neighbor, source: :neighbor, source_type: self.name
      end
    end
  end
end
