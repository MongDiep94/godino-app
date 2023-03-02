class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_address_name_species_and_character,
    against: {
      address: 'A',
      name: 'B',
      species: 'C',
      character: 'D'
    },
    using: {
      tsearch: { prefix: true }
    }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    return 4
    # self.bookings.pluck(:rating) / self.bookings.length
  end
end
