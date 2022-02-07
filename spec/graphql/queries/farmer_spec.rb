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
        search = 'lars'
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
      end
    end
  end
end
