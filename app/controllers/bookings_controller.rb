class BookingsController < ApplicationController
    def index
        @bookings = Booking.all
        # @user = User.find(session[:current_user_id])
    end
    
    def show
        @booking = Booking.find(params[:id])
        # @user = User.find(session[:current_user_id])
    end

    def new
        @booking = Booking.new
    end
    
    private
        
    def booking_params
        params.require(:booking).permit(:campsite_id, :user_id)
    end

end
