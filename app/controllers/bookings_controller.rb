class BookingsController < ApplicationController
  def index
    @bookings = Booking.all.order(created_at: :desc)
    @pending = Booking.where(user_id: current_user, status: "pended").count
    @accepted = Booking.where(user_id: current_user, status: "accepted").count
    @declined = Booking.where(user_id: current_user, status: "declined").count
    @users = User.all
    @personnalities = Personnality.all
    @joinskills = Joinskill.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.personnality = Personnality.find(params[:personnality_id])

    if @booking.save
      redirect_to bookings_path, notice: "Votre demande de réservation a bien été envoyée"
    else
      render "personnalities/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to bookings_path
  end

private

  def booking_params
    params.require(:booking).permit(:end_date, :start_date, :total_price, :status, :personnality_id, :user_id)
  end
end
