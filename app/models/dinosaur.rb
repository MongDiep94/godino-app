class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  def average_rating
    self.bookings.pluck(:rating) / self.bookings.length
  end

end
