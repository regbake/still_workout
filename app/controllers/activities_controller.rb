class ActivitiesController < ApplicationController
  # before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def index
    @activity = Activity.find(params[:id])
  end

  def create
    @activity = current_user.activities.build(activity_params)

    if @activity.save
      flash[:success] = "Activity created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def update
    activity = Activity.find(params[:id])
    activity.update(activity_params)
    redirect_to activities_path
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity.destroy
    flash[:success] = "Activity deleted"
    redirect_to request.referrer || root_url
  end

  private

    def activity_params
      params.require(:activity).permit(:comments, :date, :activity, :minutes)
    end

    def correct_user
      @activity = current_user.activities.find_by(id: params[:id])
      redirect_to root_url if @activity.nil?
    end
end
