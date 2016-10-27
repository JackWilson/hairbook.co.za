class Booking < ApplicationRecord
  belongs_to :stylist
  belongs_to :client
  belongs_to :service
  # testing
end
