class MomsController < ApplicationController

  def index
    @moms = Mom.all
    @booking = Booking.new
  end

  def new
    @mom = Mom.new
  end

  def create
    @mom = Mom.new(strong_param)
    @mom.save
    # to do : add redirect after mom creation to correct view path
    # redirect_to team_path(@mom)
    # render :new
  end

  def update
    # to do later on
  end

  def edit
    # to do later on
  end

  def destroy
    # to do later on
  end

  private

  def strong_param
    params.require(:mom).permit(:name, :last_name, :location, :price, :owner)
  end
end
