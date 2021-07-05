class Screen < ApplicationRecord
  belongs_to :theater
  has_many :shows

  validates :name, presence: true,  uniqueness: {case_sensitive: false}
  validates :seats, presence: true
end
