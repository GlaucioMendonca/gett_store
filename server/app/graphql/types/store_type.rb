module Types
  class StoreType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: true
    field :cnpj, String, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
