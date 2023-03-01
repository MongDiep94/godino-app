class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    return 1
    # self.bookings.pluck(:rating) / self.bookings.length
  end

end
