class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.string :name
      t.integer :amount
      t.integer :ordernumber
      t.string :tpye
      t.string :status

      t.timestamps
    end
  end
end
