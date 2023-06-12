class RawMaterialCost < ApplicationRecord
  belongs_to :farmer_crop
  belongs_to :raw_material
end
