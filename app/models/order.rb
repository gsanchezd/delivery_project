class Order < ApplicationRecord
  belongs_to :client
  belongs_to :zone
  belongs_to :payment
end
