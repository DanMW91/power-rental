class Power < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :description, length: { maximum: 400 }
  validates :element, :power_type, :price, :location, :user_id, :name, :example_hero, presence: true
  validates :element, inclusion: { in: %w[Air Water Fire Electricity Earth] }
  validates :power_type, inclusion: { in: %w[Mental Flight Strength Transformation Transportation Darkness Healing Sorcery] }
end
