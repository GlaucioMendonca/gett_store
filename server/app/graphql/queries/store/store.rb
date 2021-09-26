module Queries
  module Store
    class Store < Queries::BaseQuery
      description 'Get product by id'

      argument :id, ID, required: true

      type Types::StoreType, null: false

      def resolve(id:)
        ::Store.find(id)
      end
    end
  end
end
