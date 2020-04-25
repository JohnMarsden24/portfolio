class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :download_pdf ]

  def index
    @projects = Project.all
    @contact = Contact.new
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/documents/JohnMarsdenCV.pdf", type: "application/pdf", x_sendfile: true
  end
end
