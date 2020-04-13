class ContactsController < ApplicationController

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        # re-initialize Contact object for cleared form
        @contact = Contact.new
        format.html { render 'index'}
        format.js   { flash.now[:success] = @message = "Thank you for your message. I'll get back to you soon!" }
        redirect_to root_path
      else
        format.html { render 'index' }
        format.js   { flash.now[:error] = @message = "Message did not send." }
        redirect_to root_path
      end
    end
  end
end
