module Types
  class GrainAttributes < Types::BaseInputObject
    argument :id, ID
    argument :name, String
    argument :moisture, Float
    argument :falling_number, Float
    argument :protein, Float
    argument :test_weight, Float
    argument :farmers_notes, String
    argument :farmer_id, Integer
    argument :farmer, Types::FarmerType
    argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
  end
end
