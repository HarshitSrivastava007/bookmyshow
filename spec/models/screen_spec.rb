require 'rails_helper'

RSpec.describe Screen, type: :model do
  context "validation  tests" do 
    it 'validates presence' do
      screen = Screen.new
      screen.validate 
      expect(screen.errors[:name]).to include("can't be blank")
      expect(screen.errors[:seats]).to include("can't be blank")
    end  
  end
end
