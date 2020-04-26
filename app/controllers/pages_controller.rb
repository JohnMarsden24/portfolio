class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :download_pdf ]

  def home
  end

  def about
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/documents/JohnMarsdenCV.pdf", type: "application/pdf", x_sendfile: true
  end
end
