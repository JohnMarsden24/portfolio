class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :create ]

  def index
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Contact object for cleared form
        @contact = Contact.new
        format.js   { flash.now[:success] = @message = "Thank you for your message" }
        redirect_to contact_path, :notice => "Message sent"
      else
        format.js   { flash.now[:error] = @message = "Message did not send" }
        redirect_to contact_path
      end
    end
  end
end
