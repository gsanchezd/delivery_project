class AddPositionToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :position, :string
  end
end
