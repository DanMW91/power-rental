class Power < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :element, :type, :price, :location, :user_id, :name, :example_hero, presence: true
  validates :element, inclusion: { in: %w[air water fire electricity earth] }
  validates :type, inclusion: { in: %w[mental flight strenth transformation transportation darkness healing sorcery] }
end
