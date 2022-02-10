require 'rails_helper'
module Mutations
  RSpec.describe CreateGrain, type: :request do
    describe 'resolver' do
      it 'creates a new grain' do
        farmermutation = CreateFarmer.new(field: nil, object: nil, context: {})
        farmer2 = farmermutation.resolve(name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg')
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        mutation.resolve(name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: farmer2.id)

        expect(Grain.count).to eq(9)
        expect(Grain.last.name).to eq("Red Turkey Wheat")
      end

      it 'returns an error if it cannot create' do
        farmermutation = CreateFarmer.new(field: nil, object: nil, context: {})
        farmer2 = farmermutation.resolve(name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg')
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        error = mutation.resolve(name: "Red Turkey Wheat",
          moisture: 12.5,
          test_weight: 42.0,
          falling_number: 175.3,
          protein: 8.3,
          farmers_notes: "Gobble Gobble!",
          farmer_id: "100")

        expect(error).to eq("Grain could not be created.")
      end
    end
  end
end
