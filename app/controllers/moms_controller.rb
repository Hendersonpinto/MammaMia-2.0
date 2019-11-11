class MomsController < ApplicationController
  def index
    @moms = Mom.all
  end

  def show
    @mom = Mom.find(params[:id])
  end

  def new
    @mom = Mom.new
  end

  def create
    @mom = Mom.new(strong_param)
    if @mom.save
      redirect_to team_path(@mom)
    else
      render :new
    end
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
    params.require(:team).permit(:name, :address)
  end
end
