class CreateGrains < ActiveRecord::Migration[5.2]
  def change
    create_table :grains do |t|
      t.string :name
      t.float :moisture
      t.float :falling_number
      t.float :protein
      t.float :test_weight
      t.string :farmers_notes
      t.references :farmer, foreign_key: true

      t.timestamps
    end
  end
end
