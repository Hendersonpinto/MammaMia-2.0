class UsersController < ApplicationController
  def index
    # @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(strong_param)
    @user.save
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
    params.require(:user).permit(:name, :last_name, :location, :email, :owner, :mom)
  end
end
