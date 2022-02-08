module Types
  class GrainAttributes < Types::BaseInputObject
    argument :id, ID, null: false
    argument :name, String
    argument :moisture, Float
    argument :falling_number, Float
    argument :protein, Float
    argument :test_weight, Float
    argument :farmers_notes, String
    argument :farmer_id, Integer
    argument :farmer, Types::FarmerType, null: false
    argument :created_at, GraphQL::Types::ISO8601DateTime, null: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
