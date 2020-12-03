class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  
  def create
    #byebug
    @contact = Contact.new(contact_params)

    if @contact.save
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

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :region_id)
  end
end
