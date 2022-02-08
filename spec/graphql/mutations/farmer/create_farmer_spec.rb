require 'rails_helper'
module Mutations
  RSpec.describe CreateFarmer, type: :request do
    describe 'resolver' do
      it 'creates a farmer' do
        mutation = CreateFarmer.new(field: nil, object: nil, context: {})

        mutation.resolve(name: 'Beru Lars', email: 'auntberu@moisturefarms.com', phone: '555-555-5555', address: '5678 Dusty Rd, Tatooine, OK', region: 'South', bio: 'Starting a farming rebellion with my husband and nephew. Biosynthesis.', photo_url: 'picture_link_here.jpeg')

        expect(Farmer.count).to eq(6)
      end
    end
  end
end
