module Mutations
  module StockItem
    class RemoveItemFromStock < BaseMutation
      argument :id, ID, required: true
      argument :amount, Integer, required: true

      field :success, Boolean, null: false
      field :errors, [String], null: false

      def resolve(id:, amount:)
        success = true
        errors = []

        begin
          ActiveRecord::Base.transaction do
            stock = ::StockItem.lock('FOR UPDATE NOWAIT').find(id)
            stock.amount -= amount
            stock.save!
          end
        rescue ActiveRecord::RecordNotFound => e
          success = false
          errors.push(e.message)
        rescue ActiveRecord::StatementInvalid => e
          success = false
          errors.push(e.message)
        rescue ActiveRecord::RecordInvalid => e
          success = false
          errors.push(e.message)
        end

        { success: success, errors: errors }
      end
    end
  end
end
