json.extract! member_video, :id, :comment_id, :name, :created_at, :updated_at
json.url member_video_url(member_video, format: :json)