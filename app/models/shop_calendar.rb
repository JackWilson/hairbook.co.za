class ShopCalendar < ApplicationRecord
  belongs_to :shop
  belongs_to :stylist
  has_many :calendar_bookings

end
