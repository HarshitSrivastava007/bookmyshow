class Theater < ApplicationRecord
  belongs_to :city
  has_one_attached :image
  has_many :screens
  has_many :theater_admins

  validates :name, :pincode, presence: true
end
