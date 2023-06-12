class FarmerCrop < ApplicationRecord
  belongs_to :farmer
  belongs_to :crop
  has_many :raw_material_costs
end
