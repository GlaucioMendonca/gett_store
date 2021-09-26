module Queries
  module StockItem
    class StockItem < Queries::BaseQuery
      description 'Get stock item by id'

      argument :id, ID, required: true

      type Types::StockItemType, null: false

      def resolve(id:)
        ::StockItem.find(id)
      end
    end
  end
end
