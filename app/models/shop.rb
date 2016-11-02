class Shop < ApplicationRecord
  belongs_to :hair_dresser
  has_many :shop_settings
  has_many :shop_workdays
  has_many :shop_calendars
  has_many :shop_stylists
  has_many :shop_stylist_workdays

end
