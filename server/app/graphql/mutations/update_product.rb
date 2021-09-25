module Mutations
  class UpdateProduct < BaseMutation
    argument :id, ID, required: true
    argument :attributes, Types::ProductAttributes, required: true

    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(id:, attributes:)
      product = Product.find(id)
      return { product: product, errors: [] } if product.update(attributes.to_h)

      { product: nil, errors: product.errors.full_messages }
    end
  end
end
