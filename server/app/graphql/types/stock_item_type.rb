module Types
  class StockItemType < Types::BaseObject
    field :id, ID, null: false
    field :store, Types::StoreType, null: false
    field :product, Types::ProductType, null: false
    field :amount, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
