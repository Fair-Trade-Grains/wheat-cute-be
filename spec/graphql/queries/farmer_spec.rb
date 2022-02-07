require 'rails_helper'
module Types
  RSpec.describe QueryType, type: :request do
    describe 'query' do
      it 'returns a farmers grains' do
        post '/graphql', params: {"query"=>"{
          allFarmers
              {name
                id
                region
                grains {name
                id}
                }}", "graphql"=>{"query"=>"{
                allFarmers
                {name
                id
                region
                grains {name
                id}
                }}"}}

        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:allFarmers][0][:name]).to eq "Clark Kent"
        expect(response_hash[:allFarmers][0][:grains][0][:name]).to eq "Amaranth"
        expect(response_hash[:allFarmers][0][:grains].count).to eq 2
        expect(response_hash[:allFarmers][0]).to have_key :name
        expect(response_hash[:allFarmers][0]).to have_key :id
        expect(response_hash[:allFarmers][0]).to have_key :region
        expect(response_hash[:allFarmers][0]).to have_key :grains
        expect(response_hash[:allFarmers][0]).not_to have_key :bio
      end

      it 'can search for a farmer by name' do
        post '/graphql', params: {"query"=>"{
                  farmerSearch(name: \"Lars\"){
                  name
                  bio
                  email
                  }
                  }", "graphql"=>{"query"=>"{
                  farmerSearch(name: \"Lars\"){
                  name
                  bio
                  email
                  }}"}}
        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:farmerSearch].count).to eq(1)

        farmer = response_hash[:farmerSearch].first
        expect(farmer[:name]).to eq("Owen Lars")
        expect(farmer[:bio]).to eq("Starting a farming rebellion with my wife and nephew. Biosynthesis.")
        expect(farmer[:email]).to eq("uncleowen@moisturefarms.com")
        expect(farmer).to_not have_key(:phone)
        expect(farmer).to_not have_key(:id)
      end

      
    end
  end
end
