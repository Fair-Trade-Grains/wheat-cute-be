require 'rails_helper'
module Mutations
  RSpec.describe DeleteFarmer, type: :request do
    describe 'resolver' do
      it 'deletes a farmer' do
        mutation = CreateFarmer.new(field: nil, object: nil, context: {})

        farmer1 = mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')
        farmer2 = mutation.resolve(name: 'Cool Name', email: 'email@email.com', phone: '444-444-4444', address: '5678 Dusty Rd, Tatooine, OK', region: 'East', bio: 'Cool bio.', photo_url: 'picture_link_here.jpeg')

        expect(Farmer.count).to eq(7)

        deleted = DeleteFarmer.new(field: nil, object: nil, context: {})
        deleted.resolve(id: farmer1.id)

        expect(Farmer.count).to eq(6)
      end

      it 'returns an error if farmer is not found' do
        mutation = CreateFarmer.new(field: nil, object: nil, context: {})

        farmer1 = mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')
        deleted = DeleteFarmer.new(field: nil, object: nil, context: {})

        error = deleted.resolve(id: "100")
        expect(error[:response]).to eq("Farmer not found")
      end
    end
  end
end
