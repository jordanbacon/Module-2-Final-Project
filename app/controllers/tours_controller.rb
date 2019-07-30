class ToursController < ApplicationController
    before_action:current_tour, only:[:show, :edit, :update, :destroy]
    def index 
        @tours = Tour.all 
    end 
    def show
        @slots = Slot.all 
    end 
    def new
        @tour1 = Tour.new 
        @tour = Tour.find(params[:id])
    end
    def edit 
    end
    def update
        @tour.update(tour_params)
        redirect_to @tour 
    end 
    private 
    def current_tour
        @tour = Tour.find(params[:id])
    end 
    def tour_params
        params.permit(:name, :description, :price, slot_ids: [])
    end 
end
