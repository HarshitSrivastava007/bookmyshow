require 'rails_helper'

RSpec.describe TheaterAdmin, type: :model do
  context "validation  tests" do 
    it 'validates presence' do
      theater_admin = TheaterAdmin.new
      theater_admin.validate 
      expect(theater_admin.errors[:theater_id]).to include("can't be blank")
      expect(theater_admin.errors[:user_id]).to include("can't be blank")
    end  
  end
end
