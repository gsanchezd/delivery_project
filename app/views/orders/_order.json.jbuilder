json.extract! order, :id, :totalamount, :deliveryamount, :productsamount, :orderlist, :client_id, :zone_id, :payment_id, :created_at, :updated_at
json.url order_url(order, format: :json)