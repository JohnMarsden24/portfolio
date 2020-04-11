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
      redirect_to project_path(project)
    else
      render :new
    end
  end

  def edit
    find_project
  end

  def update
    project = find_project
    if project.update(strong_params)
      redirect_to project_path(project)
    else
      render :edit
    end
  end


  private

  def find_project
    @project = Project.find(params[:id])
  end

  def strong_params
    params.require(:project).permit(:name, :color, :url, :github, :technologies, :description, :difficulties, :solution, :features, photos: [])
  end
end
