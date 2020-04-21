class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :download_pdf]

  def index
    @projects = Project.all
    @contact = Contact.new
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

  def download_pdf
    send_file "#{Rails.root}/app/assets/documents/JohnMarsdenCV.pdf", type: "application/pdf", x_sendfile: true
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def strong_params
    params.require(:project).permit(:name, :color, :url, :github, :technologies, :description, :difficulties, :solution, :features, photos: [])
  end
end
