class Dinosaur < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_species_and_character,
  against: [ :name, :species, :character ],
  using: {
    tsearch: { prefix: true }
  }
  def average_rating
    return 4
    # self.bookings.pluck(:rating) / self.bookings.length
  end

end
