class CreateOrderEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :order_employees do |t|
      t.references :order, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
