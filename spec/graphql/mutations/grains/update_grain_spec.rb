require 'rails_helper'
module Mutations
  RSpec.describe UpdateGrain, type: :request do
    describe 'resolver' do
      it 'updates an existing grain' do
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

        updated = UpdateGrain.new(field: nil, object: nil, context: {})
        updated.resolve(id: grain.id, attributes: { name: 'Catchers Rye'})

        expect(Grain.last.name).to eq("Catchers Rye")
      end
    end
  end
end
