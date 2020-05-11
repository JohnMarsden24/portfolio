class ContactsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        format.html { render 'new' }
      else
        format.js   { flash.now[:error] = @message = "Message did not send" }
      end
    end
  end

end
