class AddAfpToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :afp, :string
  end
end
