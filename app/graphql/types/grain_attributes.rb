module Types
  class GrainAttributes < Types::BaseInputObject
    argument :id, ID, required: false
    argument :name, String, required: false
    argument :moisture, Float, required: false
    argument :falling_number, Float, required: false
    argument :protein, Float, required: false
    argument :test_weight, Float, required: false
    argument :farmers_notes, String, required: false
    argument :farmer_id, Integer, required: true
    argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
  end
end
