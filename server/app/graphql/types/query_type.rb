module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, [Types::ProductType], null: false
    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    field :stores, [Types::StoreType], null: false
    field :store, Types::StoreType, null: false do
      argument :id, ID, required: true
    end

    field :stock_items, [Types::StockItemType], null: false
    field :stock_item, Types::StockItemType, null: false do
      argument :id, ID, required: true
    end
    field :stock_items_by_store, [Types::StockItemType], null: false do
      argument :store_id, ID, required: true
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end

    def stores
      Store.all
    end

    def store(id:)
      Store.find(id)
    end

    def stock_items
      StockItem.all
    end

    def stock_item(id:)
      StockItem.find(id)
    end

    def stock_items_by_store(store_id:)
      StockItem.where(store_id: store_id)
    end
  end
end
