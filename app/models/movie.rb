class Movie < ApplicationRecord
  validates :name, presence: true

  has_many :assets
  has_one_attached :image
  has_many :shows

  validates :name, :language, :category, :description, :runtime, :release_date, presence: true
end
