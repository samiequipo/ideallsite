class ContactsController < ApplicationController
  def create
    #byebug
    @contact = Contact.new(
                    first_name: params[:contact][:first_name], 
                    last_name:  params[:contact][:last_name],
                    email:      params[:contact][:email],
                    phone:      params[:contact][:phone]
    )

    if @contact.save
      respond_to do |format|
        flash.now[:alert] = "Could not find user"
        format.js { render partial: 'contacts/contact_result' }
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
end
