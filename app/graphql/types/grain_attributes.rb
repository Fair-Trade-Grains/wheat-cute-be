module Types
  class GrainAttributes < Types::BaseInputObject
    field :id, ID, null: false
    field :name, String
    field :moisture, Float
    field :falling_number, Float
    field :protein, Float
    field :test_weight, Float
    field :farmers_notes, String
    field :farmer_id, Integer
    field :farmer, Types::FarmerType, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
