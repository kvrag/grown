class Garden < ApplicationRecord
  belongs_to :planner, class_name: :User
  
  has_many :plots
  has_many :plants, through: :plots 

  has_many :contributions, class_name: :Plot 
  has_many :contributors, through: :contributions, source: :contributor 

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
end