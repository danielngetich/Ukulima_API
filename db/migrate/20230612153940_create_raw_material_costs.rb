class CreateRawMaterialCosts < ActiveRecord::Migration[7.0]
  def change
    create_table :raw_material_costs do |t|
      t.references :farmer_crop, null: false, foreign_key: true
      t.references :raw_material, null: false, foreign_key: true
      t.decimal :cost

      t.timestamps
    end
  end
end
