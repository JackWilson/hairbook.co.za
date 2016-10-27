class Client < ApplicationRecord
  belongs_to :stylist
  has_many :bookings
end
