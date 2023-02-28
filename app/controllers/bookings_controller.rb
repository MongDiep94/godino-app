class BookingsController < ApplicationController

  def new
    authorize @booking
    @booking = Booking.new
  end

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  def show
    authorize @booking
    @booking = Booking.find(params[:id])
  end

  def create
    authorize @booking
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.save
    redirect_to booking_path(@booking)
  end

  def accept
    authorize @booking
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to booking_path(@booking)
  end

  def deny
    authorize @booking
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
    redirect_to booking_path(@booking)
  end

  private

  def bookings_params
    params.require(:booking).permit(:status, :user_id, :dinosaur_id)
  end

end
