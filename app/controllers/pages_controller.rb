class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    render :layout => 'home'
  end
  def dashboard
  end
end
