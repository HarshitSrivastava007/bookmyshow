class City < ApplicationRecord
  has_many :theaters
  has_one_attached :image

  validates :name, :state, presence:true
end
