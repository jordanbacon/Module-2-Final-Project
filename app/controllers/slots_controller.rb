class SlotsController < ApplicationController
    # before_action:current_tour, only:[:show, :edit, :update, :destroy]

    def update
        # byebug
        user = User.find(session[:user_id])
        @slot = Slot.find(params[:slot_id])
        @slot.user_id = user.id
        @slot.save

        redirect_to @slot
        # byebug
    end 

    def show 
        @tour = Tour.find(params[:id])
        @slot = Slot.find(params[:id])
    end
end
