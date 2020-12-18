require 'rails_helper'

RSpec.describe Application, type: :model do
  before :each do
    @application = create(:random_application)
    @shelter = create(:random_shelter)
    @pet = create(:pet, shelter: @shelter)
  end
  describe "validation" do
    it {should have_many(:pets).through(:user_applications)}
    it {should have_many(:user_applications)}
  end
end