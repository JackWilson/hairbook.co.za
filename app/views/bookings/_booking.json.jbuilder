json.extract! booking, :id, :stylist_id, :client_id, :service_id, :date, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)