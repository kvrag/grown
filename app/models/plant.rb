class Plant < ApplicationRecord
  belongs_to :watering

  validates :name, :variety, :season, :cold_resistant, :fertilization, :watering_id, presence: true
  validates :name, uniqueness: true
end