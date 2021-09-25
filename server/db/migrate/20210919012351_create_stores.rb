class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
