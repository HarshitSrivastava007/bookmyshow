require 'rails_helper'

RSpec.describe Movie, type: :model do

  context "validation  tests" do 
    it 'validates presence' do
      movie = Movie.new
      movie.validate 
      expect(movie.errors[:name]).to include("can't be blank")
      expect(movie.errors[:language]).to include("can't be blank")
      expect(movie.errors[:category]).to include("can't be blank")
      expect(movie.errors[:description]).to include("can't be blank")
      expect(movie.errors[:runtime]).to include("can't be blank")
      expect(movie.errors[:release_date]).to include("can't be blank")
    end  
  end

end
