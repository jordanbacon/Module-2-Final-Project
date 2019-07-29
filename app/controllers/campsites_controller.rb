class CampsitesController < ApplicationController

    def index
        @campsites = Campsite.all
        @user = User.find(session[:current_user_id])
    end

    def show
        @campsite = Campsite.find(params[:id])
        @user = User.find(session[:current_user_id])
    end

    def new
        @campsite = Campsite.all
        @booking = Booking.new
    end

    def create
        @campsite = Campsite.create(campsite_params)
        redirect_to campsite_path(@campsite)
    end

    def edit
        @campsite = Campsite.find(params[:id])
        @user = User.find(session[:cureent_user_id])
        @bookings = @user.bookings
    end

    def update
        @campsite = Campsite.find(params[:id])
        @campsite.update(campsite_params)
        redirect_to campsite_path(@campsite)
    end

    def delete
    end
      
        private
      
        def campsite_params
          params.require(:campsite).permit(:site_number, :location, :accomodation, :length_of_stay, :price)
        end
      end

end
