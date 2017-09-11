class Plot < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  has_one :plant
end