class TrainerProfilesController < ApplicationController

  def create
    @user = TrainerProfile.new(name: params[:name], gender: params[:gender], experience: params[:experience], qualifications: params[:qualifications], user_id: current_user.id)
    if @user.save
      flash[:success] = "Thank you for applying! Expect to hear back shortly"
      redirect_to "/trainer_profiles/#{@user.id}"
    else
      flash[:danger] = @user.errors.full_messages.join(", ")
      render "new.html.erb"
    end
  end

  def show
    @user = TrainerProfile.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @user = TrainerProfile.find_by(id: params[:id])
    if current_user.id == @user.user.id
      render "edit.html.erb"
    else
      flash[:warning] = "You must be registed to edit."
      redirect_to "/trainer_profiles/#{@user.id}"
    end
  end

end
