class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
    @bookings = Booking.all
  end

  # def show
  #   @dinosaur = Dinosaur.find(params[:id])
  #   @booking = Booking.new
  #   authorize @booking

  #   # @booking = Booking.find(params[:id])
  # end

  def create
    @booking = Booking.new(bookings_params)
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    authorize @booking
    authorize @dinosaur

    @booking.user = current_user #pour démo, User par défaut. Il faudra remettre current_user pour confirmer le login
    @booking.dinosaur = @dinosaur
    @booking.status = "Pending"
    if @booking.save
      redirect_to dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def accept
    authorize @booking
    @booking = Booking.find(params[:id])
    @booking.update(status: 'Accepted')
    redirect_to dashboard_path
  end

  def deny
    authorize @booking
    @booking = Booking.find(params[:id])
    @booking.update(status: 'Denied')
    redirect_to dashboard_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
