# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_12_153940) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crop_raw_materials", force: :cascade do |t|
    t.bigint "crop_id", null: false
    t.bigint "raw_material_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_crop_raw_materials_on_crop_id"
    t.index ["raw_material_id"], name: "index_crop_raw_materials_on_raw_material_id"
  end

  create_table "crops", force: :cascade do |t|
    t.string "crop_name"
    t.text "crop_description"
    t.integer "crop_duration"
    t.text "crop_planting_instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "farmer_crops", force: :cascade do |t|
    t.bigint "farmer_id", null: false
    t.bigint "crop_id", null: false
    t.integer "farm_size"
    t.date "planting_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_farmer_crops_on_crop_id"
    t.index ["farmer_id"], name: "index_farmer_crops_on_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.string "farmer_name"
    t.string "farmer_address"
    t.string "farmer_contact"
    t.string "farmer_county"
    t.string "farmer_sub_county"
    t.string "farmer_ward"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "raw_material_costs", force: :cascade do |t|
    t.bigint "farmer_crop_id", null: false
    t.bigint "raw_material_id", null: false
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_crop_id"], name: "index_raw_material_costs_on_farmer_crop_id"
    t.index ["raw_material_id"], name: "index_raw_material_costs_on_raw_material_id"
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string "material_name"
    t.text "material_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "crop_raw_materials", "crops"
  add_foreign_key "crop_raw_materials", "raw_materials"
  add_foreign_key "farmer_crops", "crops"
  add_foreign_key "farmer_crops", "farmers"
  add_foreign_key "raw_material_costs", "farmer_crops"
  add_foreign_key "raw_material_costs", "raw_materials"
end
