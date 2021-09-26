module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, resolver: Queries::Product::Products
    field :product, resolver: Queries::Product::Product

    field :stores, resolver: Queries::Store::Stores
    field :store, resolver: Queries::Store::Store

    field :stock_items, resolver: Queries::StockItem::StockItems
    field :stock_item, resolver: Queries::StockItem::StockItem
  end
end
