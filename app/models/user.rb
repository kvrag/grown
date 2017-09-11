class User < ApplicationRecord
  has_many :plots, dependent: :destroy
  has_many :gardens, through: :plots 
  has_many :plants, through: :plots  

  has_secure_password
  
  validates :password, length: { minimum: 8 }, allow_nil: true
  validates :username, presence: true, uniqueness: true
  validates :bio, allow_nil: true 
end