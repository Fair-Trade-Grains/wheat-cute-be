require 'rails_helper'
module Mutations
  RSpec.describe DeleteGrain, type: :request do
    describe 'resolver' do
      it 'deletes a grain' do
        farmermutation = CreateFarmer.new(field: nil, object: nil, context: {})

        farmer2 = farmermutation.resolve(name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg')

        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        grain = mutation.resolve(name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: farmer2)

        expect(Grain.last.name).to eq("Red Turkey Wheat")
        expect(Grain.count).to eq(9)

        deleted = DeleteGrain.new(field: nil, object: nil, context: {})
        deleted.resolve(id: grain.id)

        expect(Grain.count).to eq(8)
        expect(Grain.last.name).to_not eq("Red Turkey Wheat")
      end

      it 'returns an error if no grain is found' do
        deleted = DeleteGrain.new(field: nil, object: nil, context: {})
        error = deleted.resolve(id: "100")
        
        expect(error[:response]).to eq("Grain not found")
      end
    end
  end
end
