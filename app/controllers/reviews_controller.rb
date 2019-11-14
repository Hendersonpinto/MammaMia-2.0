class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @mom = Mom.find(params[:mom_id])
    @review = Review.new
  end

  def create
    @review = Review.new(strong_param)
    @review.mom_id = params[:mom_id]
    if @review.save
      redirect_to moms_path
    else
      raise
      redirect_to root_path
    end
  end

   def destroy
    Booking.destroy(params[:id])
  end

  def strong_param
    params.require(:review).permit(:rating, :description, :mom_id)
  end
end
