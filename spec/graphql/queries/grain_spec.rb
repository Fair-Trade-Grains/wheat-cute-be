require 'rails_helper'
module Types
  RSpec.describe QueryType, type: :request do
    describe 'query' do
      it 'returns all grains' do
        post '/graphql', params: {
          "query"=>"{
              allGrains{
                      name
                      id
                      moisture
                      fallingNumber
                      protein
                      testWeight
                      farmersNotes
                      farmerId
                      }
                  }",
                "graphql"=>{"query"=>"{
                    allGrains{
                            name
                            id
                            moisture
                            fallingNumber
                            protein
                            testWeight
                            farmersNotes
                            farmerId
                            }
                        }"}}

        response_hash = JSON.parse(response.body, symbolize_names: true)[:data]

        expect(response_hash[:allGrains][0][:name]).to eq "Amaranth"
        expect(response_hash[:allGrains].count).to eq 8
        expect(response_hash[:allGrains][0]).to have_key :moisture
        expect(response_hash[:allGrains][0]).not_to have_key :bio
      end
    end
  end
end
