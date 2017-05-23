class CreateCats < ActiveRecord::Migration[5.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :age
      t.string :description

      t.timestamps
    end
  end
end
