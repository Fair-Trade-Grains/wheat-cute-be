module Mutations
  class CreateGrain < BaseMutation
    argument :id, ID, required: false
    argument :name, String
    argument :moisture, Float
    argument :falling_number, Float
    argument :protein, Float
    argument :test_weight, Float
    argument :farmers_notes, String
    argument :farmer_id, Integer, required: true

    type Types::GrainType

    def resolve(name: nil, moisture: nil, falling_number: nil, protein: nil, test_weight: nil, farmers_notes: nil, farmer_id:)

      farmer = Farmer.where(id: farmer_id)
      farmer.first.grains.create!(name: name, moisture: moisture, falling_number: falling_number, protein: protein, test_weight: test_weight, farmers_notes: farmers_notes, farmer_id: farmer_id)
    end
  end
end