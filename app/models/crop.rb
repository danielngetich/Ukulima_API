class Crop < ApplicationRecord
    has_many :farmer_crops
    has_many :farmers, through: :farmer_crops
    has_many :crop_raw_materials
    has_many :raw_materials, through: :crop_raw_materials
end
