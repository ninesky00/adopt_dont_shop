require 'rails_helper'

RSpec.describe Shelter, type: :model do
  before :each do
    @shelter = create(:random_shelter)
  end
  describe 'relationships' do
    it { should have_many :pets }
  end
end
