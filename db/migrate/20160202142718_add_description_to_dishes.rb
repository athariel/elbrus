class AddDescriptionToDishes < ActiveRecord::Migration
  def change
    change_table :dishes do |t|
      t.text :description
    end
  end
end
