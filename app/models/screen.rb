class Screen < ApplicationRecord
  belongs_to :theater
  has_many :shows
end
