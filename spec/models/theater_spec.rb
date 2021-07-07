require 'rails_helper'

RSpec.describe Theater, type: :model do
  context "validation  tests" do 
    it 'validates presence' do
      theater = Theater.new
      theater.validate 
      expect(theater.errors[:name]).to include("can't be blank")
      expect(theater.errors[:pincode]).to include("can't be blank")
    end  
  end
end
