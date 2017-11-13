json.extract! pricing, :id, :daily_price, :monthly_price, :yearly_price, :item_id, :created_at, :updated_at
json.url pricing_url(pricing, format: :json)
