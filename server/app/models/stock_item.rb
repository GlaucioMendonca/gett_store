class StockItem < ApplicationRecord
  belongs_to :product
  belongs_to :store

  validates :product, presence: true
  validates :store, presence: true
  validate :product_id, :store_id
  validate :unique_product_and_store, :valid_amount?

  def valid_amount?
    errors.add(:invalid_amount, 'quantity must be greater than or equal to 0') if amount.negative?
  end

  def unique_product_and_store
    if new_record? && StockItem.where(product_id: product_id, store_id: store_id).exists?
      errors.add(:unique_product_and_store, 'This stock_item already be registered.')
    end
  end
end
