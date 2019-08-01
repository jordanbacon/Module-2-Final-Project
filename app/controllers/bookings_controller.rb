class BookingsController < ApplicationController

    # before_action:current_campsite, only:[:show, :edit, :update, :destroy]

    def update
        user = User.find(session[:user_id])
        @booking = Booking.find(params[:booking_id])
        @booking.user_id = user.id
        @booking.save

        redirect_to @booking
    end 

    def show
        @booking = Booking.find(params[:id])
    end
end