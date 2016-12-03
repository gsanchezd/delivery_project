class AddEmergencyphoneToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :emergencyphone, :string
  end
end
