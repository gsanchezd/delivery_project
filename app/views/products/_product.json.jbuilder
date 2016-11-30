json.extract! product, :id, :name, :description, :cookingtime, :price, :additional, :picture, :created_at, :updated_at
json.url product_url(product, format: :json)