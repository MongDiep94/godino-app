if @review.persisted?
  json.form render(partial: "reviews/form", formats: :html, locals: {dinosaur: @dinosaur, review: Review.new})
  json.inserted_item render(partial: "dinosaurs/review", formats: :html, locals: {review: @review})
else
  json.form render(partial: "reviews/form", formats: :html, locals: {dinosaur: @dinosaur, review: @review})
end
