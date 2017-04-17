json.extract! request, :id, :user_id, :product_id, :approved, :message, :created_at, :updated_at
json.url request_url(request, format: :json)
