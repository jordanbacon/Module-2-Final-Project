class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
    end
    
    def show
          @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @user = User.all
        @national_park = NationalPark.all
    end
  
    def create
        @review = Review.new
        if @review.save
          redirect_to review_path(@review)
        else
          render :new
        end
    end

end
