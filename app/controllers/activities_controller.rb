class ActivitiesController < ApplicationController
  def create
    @activity = current_user.activities.build(activity_params)
    if @activity.save
      flash[:success] = "Activity created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def edit
  end

  def destroy
  end

  private

    def activity_params
      params.require(:activity).permit(:comments)
    end
end
