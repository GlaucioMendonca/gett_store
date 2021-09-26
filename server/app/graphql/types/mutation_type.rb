module Types
  class MutationType < Types::BaseObject
    field :create_stock_item, mutation: Mutations::StockItem::CreateStockItem
    field :add_item_to_stock, mutation: Mutations::StockItem::AddItemToStock
    field :remove_item_from_stock, mutation: Mutations::StockItem::RemoveItemFromStock

    field :create_product, mutation: Mutations::Product::CreateProduct
    field :update_product, mutation: Mutations::Product::UpdateProduct
    field :delete_product, mutation: Mutations::Product::DeleteProduct

    field :create_store, mutation: Mutations::Store::CreateStore
    field :update_store, mutation: Mutations::Store::UpdateStore
    field :delete_store, mutation: Mutations::Store::DeleteStore
  end
end
