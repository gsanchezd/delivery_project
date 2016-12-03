class AddBikeplateToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :bikeplate, :string
  end
end
