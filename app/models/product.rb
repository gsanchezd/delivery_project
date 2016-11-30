class Product < ApplicationRecord
	has_many :product_categories
	has_many :categories, through: :product_categories

	has_many :order_products
	has_many :orders, through: :order_products
end
