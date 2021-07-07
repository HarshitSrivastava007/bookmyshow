class Screen < ApplicationRecord
  belongs_to :theater
  has_many :shows

  validates :name, :seats, presence: true
end
