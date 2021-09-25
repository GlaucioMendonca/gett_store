# frozen_string_literal: true

# Create initial products
5.times do
  Product.create(
    name: Faker::Device.model_name,
    price: Faker::Number.between(from: 1000.0, to: 10000.0).round(2),
    code: Faker::Number.between(from: 1, to: 1000).to_s
  )
end

# Create Stores
3.times do
  Store.create(
    name: Faker::Company.name,
    address: Faker::Address.full_address
  )
end

# Create StokItems
Store.all.each do |store|
  Product.all.each do |product|
    StockItem.create(
      store_id: store.id,
      product_id: product.id,
      amount: Faker::Number.between(from: 5, to: 20)
    )
  end
end
