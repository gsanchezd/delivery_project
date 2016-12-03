class AddBdayToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :bday, :date
  end
end
