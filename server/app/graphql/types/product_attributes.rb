module Types
  class ProductAttributes < Types::BaseInputObject
    argument :name, String, required: false
    argument :price, Float, required: false
    argument :code, String, required: false
  end
end
