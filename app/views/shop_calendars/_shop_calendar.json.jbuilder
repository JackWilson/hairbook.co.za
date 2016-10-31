json.extract! shop_calendar, :id, :shop_id, :stylist_id, :slot_start, :duration, :slot_end, :available, :created_at, :updated_at
json.url shop_calendar_url(shop_calendar, format: :json)