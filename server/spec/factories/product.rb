require 'faker'

FactoryBot.define do
  factory :product do
    name { Faker::Device.model_name }
    price { Faker::Number.between(from: 1000.0, to: 10000.0).round(2) }
  end
end
