require 'rails_helper'

RSpec.describe Farmer, type: :model do
  describe 'relationships' do
    it { should have_many :grains }
  end

  describe 'validations' do
    it { should validate_presence_of :email }    
  end
end
