class AdminController < ApplicationController
  before_action :admin

  def home
    @projects = Project.all
    @project = Project.new
  end

  private

  def admin
    unless current_user.admin
      redirect_to root_path
    end
  end
end
