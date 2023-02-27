class DinosaursController < ApplicationController
  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(params[:dinosaur])
    @dinosaur.save
    redirect_to dinausor_path(@dinosaur)
  end

  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = Dinosaur.find(params[:id])
  end

  def edit
    @dinosaur = Dinosaur.find(params[:id])
  end

  def update
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.update(dinosaurs_params)
    redirect_to dinosaur_path(@dinosaur)
  end

  def destroy
    @dinosaur = Dinosaur.find(params[:id])
    @dinosaur.destroy
    redirect_to dinosaurs_path, status: :see_other
  end

  private

  def dinosaurs_params
    params.require(:dinosaur).permit(:height, :price, :review, :availability_start, :availability_end, :user_id, :weight, :element, :age, :character)
  end
end
