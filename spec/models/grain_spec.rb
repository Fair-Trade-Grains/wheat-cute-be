require 'rails_helper'

RSpec.describe Grain, type: :model do
  describe 'relationships' do
    it { should belong_to :farmer }
  end
end
