class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :standard_measure, default: 100
      t.decimal :calories
      t.decimal :carbohydrate
      t.decimal :protein
      t.decimal :fat
      t.decimal :roughage

      t.timestamps null: false
    end
  end
end
