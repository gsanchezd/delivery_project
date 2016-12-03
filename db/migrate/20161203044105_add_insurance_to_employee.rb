class AddInsuranceToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :insurance, :string
  end
end
