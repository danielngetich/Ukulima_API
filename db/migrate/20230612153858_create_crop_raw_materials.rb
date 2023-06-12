class CreateCropRawMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :crop_raw_materials do |t|
      t.references :crop, null: false, foreign_key: true
      t.references :raw_material, null: false, foreign_key: true

      t.timestamps
    end
  end
end
