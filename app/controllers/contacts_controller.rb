class ContactsController < ApplicationController

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Contact object for cleared form
        @contact = Contact.new
        format.js   { flash.now[:success] = @message = "Thank you for your message" }
        redirect_to '/#contact', :notice => "Message sent"
      else
        format.js   { flash.now[:error] = @message = "Message did not send" }
        redirect_to '/#contact'
      end
    end
  end
end
