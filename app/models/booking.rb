class Booking < ApplicationRecord
  belongs_to :show
  belongs_to :user

  validates :is_confirm, :seats, :amount, presence: true
end
