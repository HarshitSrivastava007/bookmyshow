class Movie < ApplicationRecord
  validates :name, presence: true

  has_many :assets
  has_one_attached :image
  has_many :shows
end
