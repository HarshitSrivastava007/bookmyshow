class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :bookings

  validates :screen_id, presence: true
  validates :movie_id, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :amount, presence: true
end
