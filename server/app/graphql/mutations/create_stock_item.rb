module Mutations
  class CreateStockItem < BaseMutation
    argument :product_id, ID, required: true
    argument :store_id, ID, required: true
    argument :amount, Integer, required: true

    field :stock_item, Types::StockItemType, null: true
    field :errors, [String], null: false

    def resolve(product_id:, store_id:, amount:)
      stock_item = StockItem.new(product_id: product_id, store_id: store_id, amount: amount)
      return { stock_item: stock_item, errors: [] } if stock_item.save

      { stock_item: nil, errors: stock_item.errors.full_messages }
    end
  end
end
