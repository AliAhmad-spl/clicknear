json.extract! message, :id, :user_id, :message, :shop_id, :created_at, :updated_at
json.url message_url(message, format: :json)
