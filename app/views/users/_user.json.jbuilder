json.extract! user, :id, :first_name, :last_name, :phone_number, :location_id, :usertype_id, :created_at, :updated_at
json.url user_url(user, format: :json)
