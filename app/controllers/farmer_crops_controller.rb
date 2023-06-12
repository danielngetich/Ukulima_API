class FarmerCropsController < ApplicationController
    def index
        @crops = Crop.all
    end
end
