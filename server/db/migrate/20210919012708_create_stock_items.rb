class CreateStockItems < ActiveRecord::Migration[6.1]
  def change
    create_table :stock_items do |t|
      t.references :store
      t.references :product
      t.integer :amount

      t.timestamps
    end
  end
end
