require 'rails_helper'
module Mutations
  RSpec.describe UpdateGrain, type: :request do
    describe 'resolver' do
      it 'updates an existing grain' do
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        grain = mutation.resolve(name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: 36)

        updated = UpdateGrain.new(field: nil, object: nil, context: {})
        updated.resolve(id: grain.id, attributes: { name: 'Catchers Rye'})

        expect(Grain.last.name).to eq("Catchers Rye")
      end
    end
  end
end
