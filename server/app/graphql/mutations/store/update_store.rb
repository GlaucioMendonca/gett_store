module Mutations
  module Store
    class UpdateStore < BaseMutation
      argument :id, ID, required: true
      argument :attributes, Types::StoreAttributes, required: true

      field :store, Types::StoreType, null: false
      field :errors, [String], null: false

      def resolve(id:, attributes:)
        store = ::Store.find(id)
        return { store: store, errors: [] } if store.update(attributes.to_h)

        { store: nil, errors: store.errors.full_messages }
      end
    end
  end
end
