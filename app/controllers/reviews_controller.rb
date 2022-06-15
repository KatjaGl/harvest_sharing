class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  def update
  end

  def destroy
  end

private
def review_params
  params.require(:review).permit(:rating, :comment)
end

end
