class AddGenreToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :genre, :string
  end
end
