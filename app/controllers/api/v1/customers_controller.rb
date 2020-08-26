class Api::V1::CustomersController < ApplicationController

    def index
        render json: Customer.all
    end

    def show
        customer = Customer.find(params[:id])
        render json: customer
    end
    
    def create
        customer = Customer.new(customer_params)
        if customer.save
            render json: customer
        else
            render json: {error: 'Sorry! Could not create this account. Try again later.'}
    end


    def destroy
        customer = Customer.find(params[:id])
        customer.destroy
    end


    private

    def customer_params
        params.require(:customer).permit(:name, :email, :city_id)
        
    end


end
