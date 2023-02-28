class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @dinosaurs = Dinosaur.all
    raise
  end

  def dashboard
  end
end
