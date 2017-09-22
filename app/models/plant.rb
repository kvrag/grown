class Plant < ApplicationRecord
  belongs_to :watering
  has_many :plots 
  has_many :gardens, through: :plots 

  validates :name, :variety, :season, :fertilization, :watering_id, presence: true
  validates :name, uniqueness: true
end