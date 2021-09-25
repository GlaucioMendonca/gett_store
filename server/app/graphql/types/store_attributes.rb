module Types
  class StoreAttributes < Types::BaseInputObject
    argument :name, String, required: false
    argument :address, String, required: false
  end
end
