class Api::V1::BarbersController < ApplicationController

    def index
        render json: Barber.all
    end
    
    def show
        barber = Barber.find(params[:id])
        render json: barber
    end

    def create
        barber = Barber.new(barber_params)
        if barber.save
            render json: barber
        else
            render json: {error: 'Sorry! Could not create this account. Try again later.'}
    end

    def destroy
        barber = Barber.find(params[:id])
        barber.destroy
    end

    
    private

    def barber_params
        params.require(:barber).permit(:name, :email, :city_id)
        
    end
end
