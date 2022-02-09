require 'rails_helper'
module Types
  RSpec.describe QueryType, type: :request do
    describe 'query' do
      it 'returns all farmers and their grains' do
        post '/graphql', params: {
          "query"=>"{
          allFarmers {
            name
            id
            region
            grains {
              name
              id
              }
            }
                }",
                "graphql"=>{"query"=>"{
                allFarmers {
                  name
                  id
                  region
                grains {
                  name
                  id
                }
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

      it 'can find a farmer by bio keywords' do
        post '/graphql', params: {"query"=>"{
                  bioSearch(bio: \"organic\"){
                  name
                  bio
                  email
                  }
                  }", "graphql"=>{"query"=>"{
                  bioSearch(name: \"organic\"){
                  name
                  bio
                  email
                  }}"}}
        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:bioSearch].count).to eq(1)

        farmer = response_hash[:bioSearch].first
        expect(farmer[:name]).to eq("Arthur Hoggett")
        expect(farmer[:bio]).to eq("We don't say that'll do, we do that'll. Organic.")
        expect(farmer[:email]).to eq("a.hoggett@babefarms.com")
        expect(farmer).to_not have_key(:phone)
        expect(farmer).to_not have_key(:id)
      end

      it 'can return all farmers by region' do
        post '/graphql', params: {"query"=>"{
          regionSearch(region: \"south\"){
          name
          bio
          email
          region
          }
          }", "graphql"=>{"query"=>"{
          regionSearch(region: \"south\"){
          name
          bio
          email
          region
          }}"}}

        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:regionSearch].count).to eq(2)

        farmers = response_hash[:regionSearch]

        farmers.each do |farmer|
          expect(farmer).to have_key(:name)
          expect(farmer).to have_key(:bio)
          expect(farmer).to have_key(:email)
          expect(farmer[:region]).to eq("South")
          expect(farmer).to_not have_key(:phone)
          expect(farmer).to_not have_key(:address)
        end
      end

      it 'can return a single farmer by id' do
        farmer_id = Farmer.first.id
        # farmer = Farmer.first
        post '/graphql', params: {"query"=>"{
                  farmerById(id: \"#{farmer_id}\"){
                  id
                  name
                  bio
                  email
                  }
                  }", "graphql"=>{"query"=>"{
                  farmerById(id: \"#{farmer_id}\"){
                  id
                  name
                  bio
                  email
                  }}"}}
        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:farmerById]).to be_a Hash

        farmer = response_hash[:farmerById]

        expect(farmer[:id]).to eq("#{farmer_id}")
        expect(farmer).to have_key(:name)
        expect(farmer).to have_key(:bio)
        expect(farmer).to have_key(:email)

        expect(farmer).to_not have_key(:phone)
        expect(farmer).to_not have_key(:address)
      end
    end
  end
end
