module Queries
  module Product
    class Products < Queries::BaseQuery
      description 'Get all products'

      type [Types::ProductType], null: false

      def resolve
        ::Product.all
      end
    end
  end
end
