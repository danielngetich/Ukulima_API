class RawMaterial < ApplicationRecord
    has_many :crop_raw_materials
    has_many :crops, through: :crop_raw_materials
end
