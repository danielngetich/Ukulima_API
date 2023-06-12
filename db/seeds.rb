# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  10.times do
    Farmer.create!(
      farmer_name: Faker::Name.name,
      farmer_address: Faker::Address.full_address,
      farmer_contact: Faker::PhoneNumber.phone_number,
      farmer_county: Faker::Address.county,
      farmer_sub_county: Faker::Address.community,
      farmer_ward: Faker::Address.city,
      email: Faker::Internet.email,
      password: 'password123'
    )
  end

  raw_materials = [
    { material_name: 'Fertilizer', material_description: Faker::Lorem.sentence },
    { material_name: 'Seeds', material_description: Faker::Lorem.sentence },
    { material_name: 'Top Dressing', material_description: Faker::Lorem.sentence },
    { material_name: 'Labour', material_description: Faker::Lorem.sentence },
    { material_name: 'Chemicals', material_description: Faker::Lorem.sentence }
  ]
  
  raw_materials.each do |material_data|
    RawMaterial.create!(material_data)
  end
  10.times do
    Crop.create!(
      crop_name: Faker::Food.fruits,
      crop_duration: Faker::Number.between(from: 60, to: 180),
      crop_description: Faker::Lorem.paragraph,
      crop_planting_instructions: Faker::Lorem.paragraph
    )
  end
  