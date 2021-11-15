class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :power

  validates :user_id, :power_id, presence: true
end
