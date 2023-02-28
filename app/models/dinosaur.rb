class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def average_rating
    self.bookings.pluck(:rating) / self.bookings.length
  end
end
