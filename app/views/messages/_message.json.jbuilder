json.extract! message, :id, :user_name, :text, :created_at, :updated_at
json.url message_url(message, format: :json)