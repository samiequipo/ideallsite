class ContactsController < ApplicationController
  def new
    @contact = Contact.new(package_id: params[:package_id])
  end
  
  def create
    # byebug
    @contact = Contact.new(contact_params)

    if @contact.save
      # ActionMailer Gmail    
      ContactMailer.with(contact: @contact).new_contact_email.deliver_later
      
      # Twilio Whatsapp
      message = "The coffee roast '#{@contact.total_name}' was just added."
      TwilioTextMessenger.new(message).call

      respond_to do |format|
        flash.now[:alert] = "Yeah"
        format.js 
        format.json { head :ok }
      end
    else  
      respond_to do |format|
        flash.now[:alert] = "Could not find user"
        format.js { render partial: 'contacts/contact_result' }
        format.json { head :ok }
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:total_name, :email, :phone, :operator, :package_id)
  end
end
