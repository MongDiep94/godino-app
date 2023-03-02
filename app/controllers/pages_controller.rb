class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @dinosaurs = Dinosaur.all.first(6)
  end

  def dashboard
    @dinosaurs = current_user.dinosaurs
  end
end
