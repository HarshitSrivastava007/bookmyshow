class TheaterAdmin < ApplicationRecord
  belongs_to :theater
  belongs_to :user
end
