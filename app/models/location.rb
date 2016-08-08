class Location < ApplicationRecord
  has_many :users, through: :destinations
end
