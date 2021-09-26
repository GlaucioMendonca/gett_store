module Queries
  module Product
    class Product < Queries::BaseQuery
      description 'Get product by id'

      argument :id, ID, required: true

      type Types::ProductType, null: false

      def resolve(id:)
        ::Product.find(id)
      end
    end
  end
end
