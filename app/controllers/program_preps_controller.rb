class ProgramPrepsController < ApplicationController

  def index
    @exercises = ProgramPrep.where(
      trainer_profile_id: current_user.trainer_profile.id, 
      user_id: params[:user_profile_id], 
      status: "stored"
    )
  end

  def create
    @exercise = ProgramPrep.new(
      trainer_profile_id: current_user.trainer_profile.id,
      quantity: params[:quantity],
      exercise_id: params[:exercise_id],
      user_id: params[:user_id]
    )
    if @exercise.save
      flash[:success] = "Exercise has been added to program"
      redirect_to "/exercises"
    else
      
      render "/"
    end
  end

  #The 'cart' for the program
  def show
    @program = ProgramPrep.where(trainer_profile_id: current_user.trainer_profile.id, user_id: params[:id], status: "stored")
    @user = User.find_by()
    @programs = Program.where(trainer_profile_id: current_user.trainer_profile.id, user_id: params[:id])
    render "show.html.erb"
  end

  def edit

  end

  def update
    @exercise = ProgramPrep.find_by(id: params[:id])
    user_profile_id = @exercise.user.id
    @exercise.update(
      status: "removed"
    )
    redirect_to "/user_profiles/#{user_profile_id}/program_preps"
  end

  def destroy

  end
end
