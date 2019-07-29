class NationalParksController < ApplicationController

    def index
        @national_parks = NationalParks.all
        # @user = User.find(session[:current_user_id])
    end
    
    def show
        @national_park = NationalParks.find(params[:id])
        # @user = User.find(session[:current_user_id])
    end

end
