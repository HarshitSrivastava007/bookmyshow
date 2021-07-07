class TheaterAdmin < ApplicationRecord
  belongs_to :theater
  belongs_to :user

  validates :theater_id, :user_id, presence: true
end
