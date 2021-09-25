module Mutations
  class DeleteProduct < BaseMutation
    argument :id, ID, required: true

    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      product = Product.find(id)
      product.active = false
      product.save

      { product: product, errors: product.errors.full_messages }
    end
  end
end
