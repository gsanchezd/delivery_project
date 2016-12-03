class AddRutToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :rut, :string
  end
end
