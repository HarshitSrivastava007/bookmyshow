require 'rails_helper'

RSpec.describe City, type: :model do
  context "validation  tests" do 
    it 'validates presence' do
      city = City.new
      city.validate 
      expect(city.errors[:name]).to include("can't be blank")
      expect(city.errors[:state]).to include("can't be blank")
    end  
  end
end
