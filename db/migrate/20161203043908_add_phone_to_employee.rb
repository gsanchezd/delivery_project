class AddPhoneToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :phone, :string
  end
end
