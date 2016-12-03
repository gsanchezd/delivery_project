class AddAccountnumberToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :accountnumber, :integer
  end
end
