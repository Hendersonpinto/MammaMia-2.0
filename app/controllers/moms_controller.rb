class MomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @moms = Mom.all
    @booking = Booking.new
  end

  def new
    @mom = Mom.new
  end

  def create
    @mom = Mom.new(strong_param)
    @mom.owner = current_user
    if @mom.save
      redirect_to moms_path
    else
      render :new
    end
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
