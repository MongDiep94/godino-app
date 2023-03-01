class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :new, :create]

  def new
    @dinosaur = Dinosaur.new
    authorize @dinosaur
  end

  def create
    @dinosaur = Dinosaur.new(dinosaurs_params)
    @dinosaur.user = User.first #pour démo, User par défaut. Il faudra remettre current_user pour confirmer le login
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
    @markers = @dinosaurs.geocoded.map do |dinosaur|
      {
        lat: dinosaur.latitude,
        lng: dinosaur.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {dinosaur: dinosaur}),
        marker_html: render_to_string(partial: "marker", locals: {dinosaur: dinosaur})
      }
    end
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
    authorize @dinosaur
    @booking = Booking.new
    authorize @booking
    @markers =
      [{
        lat: @dinosaur.latitude,
        lng: @dinosaur.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {dinosaur: @dinosaur}),
        marker_html: render_to_string(partial: "marker", locals: {dinosaur: @dinosaur})
      }]
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
    params.require(:dinosaur).permit(:name, :species, :age, :weight, :height, :character, :address, :element, :price, :photo, :review, :user_id)
  end

  def booking_reference
    @booking_ref = @dinosaur.booking_ref
  end
end
