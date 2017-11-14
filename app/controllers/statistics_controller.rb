class StatisticsController < ApplicationController
  def index
    # @activities = Activity.find(4)
    # @activity = current_user.activities.find_by(id: params[:id])
    @activity = current_user.activities.all
    @users = User.all

    respond_to do |format|
      format.html
    end

  end
end
