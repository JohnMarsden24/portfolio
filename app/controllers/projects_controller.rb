class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def show
    find_project
  end

  def create
    project = Project.new(strong_params)
    if project.save
      redirect_to projects_path
    else
      render :new
    end
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def strong_params
    params.require(:project).permit(:name, :url, :github, :technologies, :description, :difficulties, :solution, :features, photos: [])
  end
end
