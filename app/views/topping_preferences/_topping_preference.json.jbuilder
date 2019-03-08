json.extract! topping_preference, :id, :user_id, :topping_id, :rating, :created_at, :updated_at
json.url topping_preference_url(topping_preference, format: :json)
