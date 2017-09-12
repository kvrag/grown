class Plot < ApplicationRecord
  belongs_to :contributor, class_name: :User
  belongs_to :garden
  belongs_to :plant
end