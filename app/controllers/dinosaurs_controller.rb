class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @dinosaur = Dinosaur.new
    authorize @dinosaur
  end

  def create
    @dinosaur = Dinosaur.new(dinosaurs_params)
    @dinosaur.user = current_user
    authorize @dinosaur
    if @dinosaur.save
      redirect_to dinosaur_path(@dinosaur)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @dinosaurs = policy_scope(Dinosaur)
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
    @booking = Booking.new
    authorize @booking

    # @dinosaur = Dinosaur.find(params[:id])

  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
  end

  def update
    authorize @dinosaur
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.update(dinosaurs_params)
    redirect_to dinosaur_path(@dinosaur)
  end

  def destroy
    authorize @dinosaur
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to dinosaurs_path, status: :see_other
  end

  private

  def dinosaurs_params
    params.require(:dinosaur).permit(:height, :price, :review, :user_id, :weight, :element, :age, :character, :photo)
  end

  def booking_reference
    @booking_ref = @dinosaur.booking_ref
  end
end
