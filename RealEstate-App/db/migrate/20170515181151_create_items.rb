class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :description
      t.integer :year_built
      t.integer :square_feet

      t.timestamps
    end
  end
end
