class CampsitesController < ApplicationController

    before_action:current_campsite, only:[:show, :edit, :update, :destroy]

    def index 
        @campsites = Campsite.all 
    end

    def show
        # @bookings = Booking.all 
        @bookings = Booking.all.select {|booking| booking.campsite_id == current_campsite.id &&
        booking.user_id == nil} 
            # redirect_to booking_path(@booking) 
    end

    def new
        @campsite1 = Campsite.new 
        @campsites = Campsite.all
        @campsite = Campsite.find(params[:id])
    end

    def edit 
    end

    def update
        @campsite.update(campsite_params)
        redirect_to @campsite 
    end

    private 
    
    def current_campsite
        @campsite = Campsite.find(params[:id])
    end

    def campsite_params
        params.require(:campsite).permit(:site_number, :location, :accomodation, :price, :length_of_stay)
    end

end