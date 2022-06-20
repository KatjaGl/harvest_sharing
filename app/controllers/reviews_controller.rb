class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
