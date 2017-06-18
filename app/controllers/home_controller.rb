class HomeController < ApplicationController
  def index
    @trainers = TrainerProfile.limit(4).where(status: true).order(id: :desc)
    @exercises = Exercise.limit(4).all.order(id: :desc)
    render "index.html.erb"
  end
end
