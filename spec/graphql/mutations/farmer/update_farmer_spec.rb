require 'rails_helper'
module Mutations
  RSpec.describe UpdateFarmer, type: :request do
    describe 'resolver' do
      it 'updates a farmer' do
        mutation = CreateFarmer.new(field: nil, object: nil, context: {})
        farmer = mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')
        updated = UpdateFarmer.new(field: nil, object: nil, context: {})

        updated.resolve(id: farmer.id, attributes: {email: 'test_1@email.com'})

        new_info = Farmer.last

        expect(new_info[:email]).to eq('test_1@email.com')
      end

      it 'returns an error if farmer is not found' do
        mutation = CreateFarmer.new(field: nil, object: nil, context: {})

        farmer = mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')
        farmer1 = mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')

        updated = UpdateFarmer.new(field: nil, object: nil, context: {})

        error = updated.resolve(id: "xya")

        expect(error).to eq("Farmer could not be updated.")
      end
    end
  end
end
