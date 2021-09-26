module Mutations
  module Store
    class DeleteStore < BaseMutation
      argument :id, ID, required: true

      field :store, Types::StoreType, null: false
      field :errors, [String], null: false

      def resolve(id:)
        store = ::Store.find(id)
        store.update(active: false)

        { store: store, errors: store.errors.full_messages }
      end
    end
  end
end
