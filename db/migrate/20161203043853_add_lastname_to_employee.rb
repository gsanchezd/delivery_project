class AddLastnameToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :lastname, :string
  end
end
