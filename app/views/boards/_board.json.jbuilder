json.extract! column, :id, :name, :created_at, :updated_at
json.url board_url(column, format: :json)
