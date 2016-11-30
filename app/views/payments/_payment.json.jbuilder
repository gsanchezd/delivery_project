json.extract! payment, :id, :name, :amount, :ordernumber, :tpye, :status, :created_at, :updated_at
json.url payment_url(payment, format: :json)