class CalendarBooking < ApplicationRecord
  belongs_to :booking
  belongs_to :shop_calendar
end
