class Api::V1::ServicesController < ApplicationController

    def index
        render json: Service.all
    end

    def show
        service = Service.find(params[:id])
        render json: service
    end

end
