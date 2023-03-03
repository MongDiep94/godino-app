class ReviewsController < ApplicationController
  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @review = Review.new(review_params)
    @review.dinosaur = @dinosaur
    respond_to do |format|
      authorize @review
      if @review.save
        format.html { redirect_to dinosaur_path(@dinosaur) }
        format.json
      else
        format.html { render "dinosaurs/show", status: :unprocessable_entity }
        format.json
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
