require 'rails_helper'

RSpec.describe User, type: :model do
  
  context "validation  tests" do 
    it 'ensures name presence' do
      user = User.new(password: "112233", email: 'sample@example.com', city: 'pune', role: 1, phone: "9090909090").save
      expect(user).to eq(false)
    end

    it 'ensures email presence' do
      user = User.new(password: "112233", name: 'sample').save
      expect(user).to eq(false)
    end

    it "should save successfully" do
      user = User.new(name: 'sample', password: "112233", email: 'sample@example.com', city: 'pune', role: 1, phone: "9090909090")
      expect(user).to eq(true)
    end    

  end

  context "scope tests" do
  end


end
