class AddAccounttypeToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :accounttype, :string
  end
end
