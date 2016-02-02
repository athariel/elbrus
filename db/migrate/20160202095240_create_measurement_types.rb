class CreateMeasurementTypes < ActiveRecord::Migration
  def change

    create_table :measurement_types do |t|
      t.string :name
      t.timestamps null: false
    end

    MeasurementType.create(name: 'łyżka')
    MeasurementType.create(name: 'łyżeczka')
    MeasurementType.create(name: 'szklanka')
    MeasurementType.create(name: 'sztuka')
    MeasurementType.create(name: 'gram')

    change_table :measurements do |t|
      t.references :measurement_type
      t.remove :name
    end

  end
end
