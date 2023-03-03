class Review < ApplicationRecord
  belongs_to :dinosaur
  validates :content, length: {minimum: 3}
end
