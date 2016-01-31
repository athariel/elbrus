class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :name
      t.belongs_to :product, index: true, foreign_key: true
      t.decimal :ratio

      t.timestamps null: false
    end
  end
end
