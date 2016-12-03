class AddBankToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :bank, :string
  end
end
