class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :screen
  has_many :bookings

  validates :screen_id, presence: { message: "Can't be empty"}, acceptance: { message: 'must be abided' }
  validates :movie_id, presence: true, numericality: { message: "Must provide" }
  validates :date, presence: { message: "Can't be empty"}
  validates :time, presence: { message: "Can't be empty"}
  validates :amount, numericality: { message: "Can't be empty"}
end
