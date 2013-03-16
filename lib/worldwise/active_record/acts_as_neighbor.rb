module Worldwise
  module ActiveRecord
    module ActsAsNeighbor
      def acts_as_neighbor
        attr_accessible :neighbor_ids
        has_many :neighborships, as: :owner, dependent: :destroy
        has_many :neighbors, through: :neighborships, as: :neighbor, source: :neighbor, source_type: self.name
      end
    end
  end
end
