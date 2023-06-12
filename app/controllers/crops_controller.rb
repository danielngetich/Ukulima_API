class CropsController < ApplicationController
    def crop_names
        @crop_names = Crop.pluck(:crop_name)
        render json: @crop_names
    end
    def show_related_raw_materials
        crop = Crop.find(params[:id])
        @related_raw_materials = crop.raw_materials
        render json: @related_raw_materials
      end
end
