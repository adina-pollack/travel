class Message < ApplicationRecord
  belongs_to :location
  belongs_to :user
  accepts_nested_attributes_for :location
end
