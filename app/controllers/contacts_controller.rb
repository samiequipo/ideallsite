class ContactsController < ApplicationController
  def new
    @contact = Contact.new(operator: params[:operator])
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

  private

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :email, :phone, :region_id, :operator)
  end
end
