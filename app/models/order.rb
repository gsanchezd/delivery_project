class Order < ApplicationRecord
	belongs_to :client
	belongs_to :zone
	belongs_to :payment

	has_many :order_products
	has_many :products, through: :order_products
end
