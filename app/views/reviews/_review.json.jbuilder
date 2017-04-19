json.extract! review, :id, :user_id, :title, :body, :created_at, :updated_at
json.url review_url(review, format: :json)
