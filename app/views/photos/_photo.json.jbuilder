json.extract! photo, :id, :title, :foto, :created_at, :updated_at
json.url photo_url(photo, format: :json)
