class Stylist < ApplicationRecord
  has_many :clients
  has_many :bookings
end
