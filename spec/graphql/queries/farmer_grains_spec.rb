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
      end
    end
  end
end
