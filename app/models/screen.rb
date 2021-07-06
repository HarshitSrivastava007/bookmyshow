class Screen < ApplicationRecord
  belongs_to :theater
  has_many :shows

  validates :name, presence: { message: "Can't be empty"},  uniqueness: {message: "Must unique"},acceptance: { message: 'must be abided' }
  validates :seats, numericality: { message: "Must provide" },acceptance: { message: 'must be abided' }
end
