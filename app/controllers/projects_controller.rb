class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  before_action :admin, except: [ :show, :index ]
  before_action :find_project, only: [ :show, :edit, :destroy]

  def index
    @projects = Project.all.reorder(created_at: :desc)
  end

  def new
    @project = Project.new
  end

  def show
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
  end

  def update
    project = find_project
    if project.update(strong_params)
      redirect_to project_path(project)
    else
      render :edit
    end
  end

  def destroy
    @project.destroy
    redirect_to admin_home_path
  end

  private

  def admin
    unless current_user.admin
      redirect_to root_path
    end
  end

  def find_project
    @project = Project.friendly.find(params[:slug])
  end

  def strong_params
    params.require(:project).permit(:name, :color, :url, :github, :technologies, :description, :difficulties, :solution, :features, photos: [])
  end
end
