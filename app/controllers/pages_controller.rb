class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :dashboard] #pensez à enlever :dashboard pour remettre le logo

  def home
    @dinosaurs = Dinosaur.all.first(3)
  end

  def dashboard
    @dinosaurs = current_user.dinosaur
  end
end
