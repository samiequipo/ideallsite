class ContactsController < ApplicationController
  def new
    @contact = Contact.new(package_id: params[:package_id], header_click_type: params[:header_click_type])
  end
 
  def create
    # byebug
    @contact = Contact.new(contact_params)
    @contact.visit = Ahoy::Visit.last

    if @contact.save
      if @contact.visit.user.count <= 2
        # ActionMailer Gmail    
        ContactMailer.with(contact: @contact).new_contact_email.deliver_later
        
        # Twilio Whatsapp
        # User post data in meo || nos || vodafone || nowo path 
        if @contact.package
          message = "Ideall tem um novo cliente 

          Name: #{@contact.total_name}
          Email: #{@contact.email}
          Phone: (+593) #{@contact.phone}
          N° Cliente: #{@contact.visit_id}
          ----------------------------------
          País: #{@contact.visit.country}
          Cidade: #{@contact.visit.city}
          Região: #{@contact.visit.region}
          ----------------------------------
          Company: #{@contact.package.type.company.description}
          Plano: #{@contact.package.type.plano}
          ----------------------------------
          #{@contact.package.description}
          ---------
          ° € #{@contact.package.price}/mês
          ---
          ° #{@contact.package.tv}
          ---
          ° #{@contact.package.internet}
          ---
          ° #{@contact.package.movel}
          ---
          ° #{@contact.package.cartao}
          ---
          ° #{@contact.package.voz}
          ---
          "
        else
          message = "Ideall tem um novo cliente 

          Contato de: #{@contact.header_click_type}
          -------------------------------------
          Name: #{@contact.total_name}
          Email: #{@contact.email}
          Phone: (+593) #{@contact.phone}
          N° Cliente: #{@contact.visit_id}
          ----------------------------------
          País: #{@contact.visit.country}
          Cidade: #{@contact.visit.city}
          Região: #{@contact.visit.region}
          ----"
        end
        TwilioTextMessenger.new(message).call
      end

      #Removing contact > 2
      @contact.is_more?(@contact)

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
    params.require(:contact).permit(:total_name, :email, :phone, :package_id, :header_click_type)
  end
end
