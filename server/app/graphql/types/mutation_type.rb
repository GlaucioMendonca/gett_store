module Types
  class MutationType < Types::BaseObject
    field :create_stock_item, mutation: Mutations::CreateStockItem
    field :create_product, mutation: Mutations::CreateProduct
    field :update_product, mutation: Mutations::UpdateProduct
    field :delete_product, mutation: Mutations::DeleteProduct

    field :create_store, mutation: Mutations::CreateStore
    field :update_store, mutation: Mutations::UpdateStore
    field :delete_store, mutation: Mutations::DeleteStore
  end
end
