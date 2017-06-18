class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
    render "index.html.erb"
  end
end
