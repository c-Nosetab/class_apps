class AddNewItemsToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :bedrooms, :integer
    add_column :items, :bathrooms, :integer
    add_column :items, :floors, :integer
    add_column :items, :availability, :string
    add_column :items, :price, :decimal, precision: 8, scale: 2
    add_column :items, :sold, :boolean, default: false
  end
end
