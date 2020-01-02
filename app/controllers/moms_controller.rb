class MomsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    # @moms = Mom.where(supermom:true)
    if current_user
    @moms = Mom.where("supermom = ? AND owner_id != ?", false, current_user.id)
    else
      @moms = Mom.where(supermom:false)
    end
    @booking = Booking.new

    @geomoms = Mom.geocoded #returns moms with coordinates
    @markers = @geomoms.map do |mom|
      {
        lat: mom.latitude,
        lng: mom.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { mom: mom }),
        image_url: helpers.asset_url('logo.jpg')
      }
    end

    if params[:query].present?
      sql_query = " \
        moms.name @@ :query \
        OR moms.last_name @@ :query \
        OR moms.bio @@ :query \
        OR moms.location @@ :query \
        OR users.name @@ :query \
        OR users.last_name @@ :query \
      "
      @moms = Mom.joins(:owner).where(sql_query, query: "%#{params[:query]}%")
    elsif current_user
    @moms = Mom.where("supermom = ? AND owner_id != ?", false, current_user.id)
    else
      @moms = Mom.where(supermom:false)

      if params[:query].present?
        sql_query = " \
          moms.name @@ :query \
          OR moms.last_name @@ :query \
          OR moms.bio @@ :query \
          OR moms.location @@ :query \
          OR users.name @@ :query \
          OR users.last_name @@ :query \
        "
        @moms = Mom.joins(:owner).where(sql_query, query: "%#{params[:query]}%")
      elsif current_user
        @moms = Mom.where("supermom = ? AND owner_id != ?", false, current_user.id)
      else
      @moms = Mom.where(supermom:false)


      end
  end
end

  def new
    @mom = Mom.new
  end

  def create
    @mom = Mom.new(strong_param)
    @mom.owner = current_user
    if @mom.save!
      redirect_to dashboard_path
    else
      render :new
    end
    # to do : add redirect after mom creation to correct view path
    # redirect_to team_path(@mom)
    # render :new
  end

  def supermom_home
    @booking = Booking.new

  end

  def supermoms
    @supermoms = Mom.where(supermom: true)
    @booking = Booking.new
  end

  def edit
    @mom = current_user.mom
  end

  def update
    @mom = current_user.mom
    @mom.update(strong_param)
    redirect_to dashboard_path
  end


  def destroy
    @mom = current_user.mom
    @mom.destroy
    redirect_to dashboard_path
  end

  private

  def strong_param
    params.require(:mom).permit(:name, :last_name, :location, :price, :owner, :bio, :photo)
  end
end
