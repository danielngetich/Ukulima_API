class CropRawMaterial < ApplicationRecord
  belongs_to :crop
  belongs_to :raw_material
end
