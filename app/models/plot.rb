class Plot < ApplicationRecord
  belongs_to :user
  belongs_to :garden
  belongs_to :plant
end