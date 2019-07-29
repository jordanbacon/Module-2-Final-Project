class CampsitesController < ApplicationController

    def index
        @campsites = Campsite.all
        # @user = User.find(session[:current_user_id])
    end

    def show
        @campsite = Campsite.find(params[:id])

        # @user = User.find(session[:current_user_id])
    end

    private
    
    def campsite_params
        params.require(:campsite).permit(:site_number, :location, :accomodation, :length_of_stay, :price)
    end
end