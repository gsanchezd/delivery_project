class AddNameToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :name, :string
  end
end
