class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :totalamount
      t.integer :deliveryamount
      t.integer :productsamount
      t.string :orderlist
      t.references :client, foreign_key: true
      t.references :zone, foreign_key: true
      t.references :payment, foreign_key: true

      t.timestamps
    end
  end
end
