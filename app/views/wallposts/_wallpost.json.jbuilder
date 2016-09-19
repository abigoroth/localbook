json.extract! wallpost, :id, :user_id, :wall_status, :wall_date, :wall_emotion, :created_at, :updated_at
json.url wallpost_url(wallpost, format: :json)