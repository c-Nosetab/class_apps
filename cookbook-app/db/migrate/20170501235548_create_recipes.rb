class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :ingredients
      t.string :directions
      t.string :image_url
      t.integer :prep_time

      t.timestamps   #created at and #updated at
    end
  end
end