require 'rails_helper'
module Mutations
  RSpec.describe CreateGrain, type: :request do
    describe 'resolver' do
      it 'creates a new grain' do
        mutation = CreateGrain.new(field: nil, object: nil, context: {})

        mutation.resolve(name: "Red Turkey Wheat",
            moisture: 12.5,
            test_weight: 42.0,
            falling_number: 175.3,
            protein: 8.3,
            farmers_notes: "Gobble Gobble!",
            farmer_id: 36)

        expect(Grain.count).to eq(9)
        expect(Grain.last.name).to eq("Red Turkey Wheat")
      end
    end
  end
end
