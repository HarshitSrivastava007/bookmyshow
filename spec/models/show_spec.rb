require 'rails_helper'

RSpec.describe Show, type: :model do
  context "validation  tests" do 
    it 'validates presence' do
      show = Show.new
      show.validate 
      expect(show.errors[:date]).to include("can't be blank")
      expect(show.errors[:time]).to include("can't be blank")
      expect(show.errors[:amount]).to include("can't be blank")
    end  
  end
end
