module Queries
  module StockItem
    class StockItems < Queries::BaseQuery
      description 'Get all stock items'

      type [Types::StockItemType], null: false

      def resolve
        ::StockItem.all
      end
    end
  end
end
