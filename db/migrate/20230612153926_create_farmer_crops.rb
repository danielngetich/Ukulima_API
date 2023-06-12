class CreateFarmerCrops < ActiveRecord::Migration[7.0]
  def change
    create_table :farmer_crops do |t|
      t.references :farmer, null: false, foreign_key: true
      t.references :crop, null: false, foreign_key: true
      t.integer :farm_size
      t.date :planting_date

      t.timestamps
    end
  end
end
