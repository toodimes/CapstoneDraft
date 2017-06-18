class GoalsController < ApplicationController

  def index
    @goals = current_user.user_profile.goals.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @goal = Goal.new(
      name: params[:name],
      goal: params[:goal],
      user_profile_id: current_user.user_profile.id,
      completed: false
    )
    if @goal.save
      flash[:success] = "Goal has been added, add another goal below"
      redirect_to "/goals/new"
    else
      flash[:danger] = @goal.errors.full_messages.join(", ")
      redirect_to "/goals/new"
    end
  end

  def edit
    @goal = Goal.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.update(
      name: params[:name],
      goal: params[:goal],
      completed: params[:completed]
    )
    redirect_to "/goals/#{@goal.id}"
  end

  def show
    @goal = Goal.find_by(id: params[:id])
    render "show.html.erb"
  end

end
