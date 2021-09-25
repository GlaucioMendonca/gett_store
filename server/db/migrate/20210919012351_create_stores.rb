class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :cnpj, null: false, index: { unique: true }

      t.timestamps
    end
  end
end
