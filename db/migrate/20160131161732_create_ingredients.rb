class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.belongs_to :product, index: true, foreign_key: true
      t.references :measurement, index: true, foreign_key: true
      t.decimal :amount
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
