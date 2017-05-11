class MakeChangesToProducts < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :title, :name
    change_column :products, :description, :text
    remove_column :products, :price, :integer
    add_column :products, :price, :decimal, precision: 6, scale: 2
    remove_column :products, :isbn, :string
  end
end
