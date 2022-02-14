require 'rails_helper'
module Mutations
  RSpec.describe CreateFarmer, type: :request do
    describe 'resolver' do
      it 'sends an email' do
        mutation = ContactFarmer.new(field: nil, object: nil, context: {})

        response = mutation.resolve(farmer: 'to@example.org', sender: 'test@example.org', message: 'Test message')

        expect(response[:response]).to eq("Message sent")
      end
    end
  end
end
