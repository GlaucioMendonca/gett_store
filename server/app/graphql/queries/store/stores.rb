module Queries
  module Store
    class Stores < Queries::BaseQuery
      description 'Get all stores'

      type [Types::StoreType], null: false

      def resolve
        ::Store.all
      end
    end
  end
end
