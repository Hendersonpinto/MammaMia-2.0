class DashboardsController < ApplicationController
    def dashboard
    @my_mom = current_user.mom
    @my_past_bookings = Booking.where(renter: current_user).where('start_date < ?', Date.today)
    @my_current_bookings = Booking.where(renter: current_user).where('start_date >= ?', Date.today)
    @my_mom_past_bookings = Booking.joins(:mom).where(moms: { owner: current_user }).where('start_date < ?', Date.today)
    @my_mom_current_bookings = Booking.joins(:mom).where(moms: { owner: current_user }).where('start_date >= ?', Date.today)
  end
end
