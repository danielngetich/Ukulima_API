class CreateCrops < ActiveRecord::Migration[7.0]
  def change
    create_table :crops do |t|
      t.string :crop_name
      t.text :crop_description
      t.integer :crop_duration
      t.text :crop_planting_instructions

      t.timestamps
    end
  end
end
