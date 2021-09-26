module Mutations
  module Store
    class CreateStore < BaseMutation
      argument :name, String, required: true
      argument :address, String, required: false

      field :store, Types::StoreType, null: false
      field :errors, [String], null: false

      def resolve(name:, address:)
        store = ::Store.new(name: name, address: address)
        return { store: store, errors: [] } if store.save

        { store: nil, errors: store.errors.full_messages }
      end
    end
  end
end
