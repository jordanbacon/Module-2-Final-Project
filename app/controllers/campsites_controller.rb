class CampsitesController < ApplicationController
    
    before_action:current_campsite, only:[:show, :edit, :update, :destroy]

    def index 
        @campsites = Campsite.all 
    end

    def show
        @bookings = Booking.all 
    end

    def new
        @campsite1 = Campsite.new 
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
        params.permit(:site_number, :location, :accomodation, :price, :length_of_stay, booking_ids: [])
    end


end
