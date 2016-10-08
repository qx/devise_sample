json.extract! post, :id, :email, :created_at, :updated_at
json.url user_url(post, format: :json)