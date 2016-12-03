class OrderEmployee < ApplicationRecord
  belongs_to :order
  belongs_to :employee
end
