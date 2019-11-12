class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(strong_param)
    @mom = Mom.find(params[:mom_id])
    @booking.mom = @mom
    @booking.renter = current_user
    @booking.price = @mom.price
    if @booking.save
      redirect_to mom_path(@mom)
    else
      raise
      render template: "moms/show"
    end

    # to do : add redirect after booking creation to correct view path
    # redirect_to team_path(@booking)
    # render :new
  end

  def destroy
    Booking.destroy(params[:id])
  end

  def update
    # to do later on
  end

  def edit
    # to do later on
  end

  private

  def strong_param
    params.require(:booking).permit(:start_date, :end_date)
  end
end
