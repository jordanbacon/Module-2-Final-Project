class UsersController < ApplicationController

    def index 
        @users = User.all 
    end

    def show
        @user = User.find(params[:id])
        @campsites = Campsite.all
        @tours = Tour.all
        @reviews = Review.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.valid?
            @user.save
            redirect_to user_path(@user)
        else
            redirect_to new_user_path
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email_address, :password, :password_confirmation)
    end

end