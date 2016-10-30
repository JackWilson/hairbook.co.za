class Stylist < ApplicationRecord
  has_many :clients
  has_many :bookings
  has_many :shop_calendars
  has_many :shop_stylist_workdays
  has_many :shop_stylists

end
