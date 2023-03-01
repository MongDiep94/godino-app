class BookingsController < ApplicationController

  def new
    authorize @booking
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @booking = Booking.new
  end

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  def show
    authorize @booking
    @dinosaur = Dinosaur.find(params[:id])
    @booking = Booking.new


    # @booking = Booking.find(params[:id])
  end

  def create
    authorize @booking
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
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
