class Location < ApplicationRecord
  has_many :messages
  has_many :users, through: :messages

  def self.search(search)
    where("country ILIKE ?", "%#{search}%")
  end
end
