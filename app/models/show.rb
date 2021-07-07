class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :bookings

  validates :date, :time, :amount ,presence: true
  validates :screen_id, presence: { message: "Can't be empty"}, acceptance: { message: 'must be abided' }
  validates :movie_id, presence: true, numericality: { message: "Must provide" }
end
