class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :cookingtime
      t.integer :price
      t.string :additional
      t.string :picture

      t.timestamps
    end
  end
end
