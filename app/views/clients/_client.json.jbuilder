json.extract! client, :id, :firstName, :lastName, :image_url, :stylist_id, :sex, :contactNo, :email, :created_at, :updated_at
json.url client_url(client, format: :json)