class DinosaursController < ApplicationController
  def new
    authorize @dinosaur
    @dinosaur = Dinosaur.new
  end

  def create
    authorize @dinosaur
    @dinosaur = Dinosaur.new(dinosaurs_params)
    @dinosaur.user = current_user
    @dinosaur.save
    redirect_to dinausaur_path(@dinosaur)
  end

  def index
    @dinosaurs = policy_scope(Dinosaur)
    @dinosaurs = Dinosaur.all
  end

  def show
    authorize @dinosaur
    @dinosaur = Dinosaur.find(params[:id])
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
    params.require(:dinosaur).permit(:height, :price, :review, :availability_start, :availability_end, :user_id, :weight, :element, :age, :character, :photo)
  end

  def booking_reference
    @booking_ref = @dinosaur.booking_ref
  end
end
