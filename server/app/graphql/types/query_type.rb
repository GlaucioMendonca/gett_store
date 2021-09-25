module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :products, [Types::ProductType], null: false
    field :product, Types::ProductType, null: false do
      argument :id, ID, required: true
    end

    def products
      Product.all
    end

    def product(id:)
      Product.find(id)
    end
  end
end
