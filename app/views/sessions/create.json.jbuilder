json.extract! current_user, :id, :email, :created_at, :updated_at
json.url posts_url(format: :json)