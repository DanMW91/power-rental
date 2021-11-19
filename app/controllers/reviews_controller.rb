class ReviewsController < ApplicationController

  def create
    review = Review.new(review_params)
    review.power_id = params[:power_id]
    review.user = current_user
    review.save!
    redirect_to bookings_path
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
