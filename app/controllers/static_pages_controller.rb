class StaticPagesController < ApplicationController
  def home
    @activity = current_user.activities.build if logged_in?
    @show = current_user.activities.all
  end

  def help
  end

  def about
  end
end
