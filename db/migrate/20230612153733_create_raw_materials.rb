class CreateRawMaterials < ActiveRecord::Migration[7.0]
  def change
    create_table :raw_materials do |t|
      t.string :material_name
      t.text :material_description

      t.timestamps
    end
  end
end
