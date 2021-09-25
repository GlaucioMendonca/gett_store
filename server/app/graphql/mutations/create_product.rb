module Mutations
  class CreateProduct < BaseMutation
    argument :name, String, required: true
    argument :price, Float, required: true
    argument :code, String, required: true

    field :product, Types::ProductType, null: false
    field :errors, [String], null: false

    def resolve(name:, price:, code:)
      product = Product.new(name: name, price: price, code: code)
      return { product: product, errors: [] } if product.save

      { product: nil, errors: product.errors.full_messages }
    end
  end
end
