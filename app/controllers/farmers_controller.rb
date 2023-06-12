class FarmersController < ApplicationController
    def index
        @farmers=Farmer.all
        render json: @farmers
    end
end
