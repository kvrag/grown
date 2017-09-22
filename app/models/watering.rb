class Watering < ApplicationRecord
  has_many :plants

  validates :frequency, presence: true
end