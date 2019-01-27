class AddColumnToChoco < ActiveRecord::Migration[5.2]
  def change
    add_column :chocolates, :image, :text
    add_column :chocolates, :name, :string
  end
end
