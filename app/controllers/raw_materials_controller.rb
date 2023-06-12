class RawMaterialsController < ApplicationController
    def index
        @raw_materials=RawMaterial.all
        render json: @raw_materials
    end
end
