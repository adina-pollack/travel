class Location < ApplicationRecord
  has_many :destinations
  has_many :users, through: :destinations

  def self.search(search)
    where("country ILIKE ?", "%#{search}%") 
  end
end
