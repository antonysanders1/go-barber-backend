class Api::V1::AppointmentsController < ApplicationController

    before_action :set_customer

    def index
        appointments = @customer.appointments
        render json: appointments
    end

    def show
        appointment = Appointment.find(id: params[:id])
        render json: appointment
    end

    def create
        appointment = @customer.appointments.new(appointment_params)
        if appointment.valid?
            render json: appointment
        else
            render json: {error: 'Sorry! We could not create this request. Try again later.'}
    end
    
    private

    def set_customer
        @customer = Customer.find(params[:customer_id])
    end

    def appointment_params
        params.require(:appointment).permit(:customer_id, :barber_id, :service_id)
        
    end
end
