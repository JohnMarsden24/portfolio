class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about , :download_pdf ]

  def home
  end

  def about
  end

  def download_pdf
    send_file "#{Rails.root}/app/assets/documents/CV.pdf", type: "application/pdf", x_sendfile: true
  end
end
