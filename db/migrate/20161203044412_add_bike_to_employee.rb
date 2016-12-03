class AddBikeToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :bike, :string
  end
end
