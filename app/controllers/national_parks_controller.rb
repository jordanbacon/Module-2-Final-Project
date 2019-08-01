class NationalParksController < ApplicationController
    
    def index
        @national_parks = NationalPark.all
        # @user = User.find(session[:current_user_id])
    end
    
    def show
        @national_park = NationalPark.find(params[:id])
        @campsites = Campsite.all
        @tours = Tour.all
        # @user = User.find(session[:current_user_id])
    end


end
