class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end
    
    def show
          @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @users = User.all
        @national_parks = NationalPark.all
    end
  
    def create
        @review = Review.new(review_params)
        
        if @review.valid?
          @review.save
          redirect_to review_path(@review)
        else
          redirect_to new_review_path
        end
    end

    private
    def review_params
        params.require(:review).permit(:national_park_id, :user_id, :description)
    end

end
