class RemoveLocationFromQuotes < ActiveRecord::Migration[5.1]
  def change
    remove_column :quotes, :location, :string
  end
end
