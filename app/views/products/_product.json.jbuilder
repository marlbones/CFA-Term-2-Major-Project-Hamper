json.extract! product, :id, :title, :user_id, :cost, :collection, :items, :contents, :perishables, :non_perishables, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
