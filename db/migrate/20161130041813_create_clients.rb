class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
