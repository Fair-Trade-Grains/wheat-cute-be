require 'rails_helper'
module Mutations
  RSpec.describe UpdateGrain, type: :request do
    describe 'resolver' do
      it 'updates an existing grain' do
        farmermutation = CreateFarmer.new(field: nil, object: nil, context: {})
        farmer = farmermutation.resolve(attributes: {name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg'})
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        create_grain = mutation.resolve(attributes: {name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: farmer[:farmer].id})

        updated = UpdateGrain.new(field: nil, object: nil, context: {})

        update_name = updated.resolve(id: create_grain[:grain].id, attributes: { name: 'Catchers Rye'})

        expect(update_name[:grain].name).to eq("Catchers Rye")
      end

      it 'returns an error if grain is not found' do
        farmermutation = CreateFarmer.new(field: nil, object: nil, context: {})
        farmer = farmermutation.resolve(attributes: {name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg'})
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        grain = mutation.resolve(attributes: {name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: farmer[:farmer].id})

        updated = UpdateGrain.new(field: nil, object: nil, context: {})

        error = updated.resolve(id: "xya")

        expect(error[:errors]).to eq("Grain could not be updated.")
      end
    end
  end
end
