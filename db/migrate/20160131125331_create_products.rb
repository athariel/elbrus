class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :standard_measure
      t.float :calories
      t.float :carbohydrate
      t.float :protein
      t.float :fat
      t.float :roughage

      t.timestamps null: false
    end
  end
end
