class UserProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.trainer_profile
      @users = UserProfile.where(
        trainer_profile_id: current_user.trainer_profile.id
      )
    else
      redirect_to "/"
    end
  end

  def create
    @user = UserProfile.new(
      name: params[:name],
      gender: params[:gender],
      equipment: params[:equipment],
      user_id: current_user.id,
      trainer_profile_id: 3
    )
    if @user.save 
      redirect_to "/goals/new"      
    else
      flash[:danger] = @user.errors.full_messages.join(", ")
      render "new.html.erb"
    end
  end

  def edit
    @user = UserProfile.find_by(id: params[:id])
    if current_user.id == @user.user.id 
      render "edit.html.erb"
    else
      flash[:warning] = "You must be registered to edit."
      redirect_to "/user_profiles/#{@user.id}/edit"
    end
  end
end
