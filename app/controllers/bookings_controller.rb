class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    @users = User.all
    @personnalities = Personnality.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

private

  def booking_params
    params.require(:booking).permit(:date_reservation, :personnality_id, :user_id, :status)
  end
end
