class User < ApplicationRecord
  has_many :planned_gardens, class_name: :Garden, foreign_key: :planner_id

  has_many :plots, dependent: :destroy
  has_many :contributed_gardens, through: :plots

  has_many :plots_contributed, through: :planned_gardens, source: :contributions
  has_many :plot_contributors, through: :plots, source: :contributor 
  has_many :supported_gardeners, through: :contributed_gardens, source: :planner

  has_secure_password
  
  validates :password, length: { minimum: 8 }, allow_nil: true
  validates :username, presence: true, uniqueness: true
end