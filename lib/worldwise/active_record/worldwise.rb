module Worldwise
  module ActiveRecord
    module Worldwise

      def worldwise
        extend ActsAsNeighbor, ClassMethods
      end

    end
  end
end
