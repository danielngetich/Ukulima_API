# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
farmers = [
  { farmer_name: 'John Doe', farmer_address: '123 Main St', farmer_contact: '123-456-7890', email: 'john2@example.com',farmer_county:'nakuru',farmer_sub_county:'kuresoi',farmer_ward:'kiptagich', password: 'password123' },
  { farmer_name: 'Jane Smith', farmer_address: '456 Elm St', farmer_contact: '987-654-3210', email: 'jane3@example.com',farmer_county:'nakuru',farmer_sub_county:'kuresoi',farmer_ward:'kiptagich', password: 'password456' },
  # Add more farmer data as needed
]
farmers.each do |farmer_data|
    Farmer.create!(farmer_data)
  end
raw_materials = [
  { material_name: 'Fertilizer',material_description:'must' },
  { material_name: 'Seeds' ,material_description:'must'},
  { material_name: 'Top Dressing',material_description:'must' },
  { material_name: 'Labour',material_description:'must' },
  { material_name: 'Chemicals',material_description:'must' }
  # Add more raw material data as needed
]
raw_materials.each do |raw_material_data|
    RawMaterial.create!(raw_material_data)
  end
crops = [
  {crop_name: 'Wheat',crop_description:'monocotyledon', crop_duration: 90, crop_planting_instructions: 'Some instructions for wheat planting' },
  { crop_name: 'Corn',crop_description:'monocotyledon', crop_duration: 120, crop_planting_instructions: 'Some instructions for corn planting' },
  # Add more crop data as needed
]
crops.each do |crop_data|
    Crop.create!(crop_data)
  end