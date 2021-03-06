class ContactsController < ApplicationController
  def new
    @contact = Contact.new(package_id: params[:package_id], header_click_type: params[:header_click_type])
  end
 
  def create
    # byebug
    @contact = Contact.new(contact_params)
    @contact.visit = current_visit

    if @contact.save
      if @contact.visit.user.count <= 2
        # ActionMailer Gmail    
        ContactMailer.with(contact: @contact).new_contact_email.deliver_later
        
        # Twilio Whatsapp
        # User post data in meo || nos || vodafone || nowo path 
        if @contact.package 
          message = "Your Ideall order of 1 dozen frosted cupcakes has shipped and should be delivered on July 10, 2019. Details: http://www.yummycupcakes.com/
          ----    
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
          message = "Your Ideall order of 1 dozen frosted cupcakes has shipped and should be delivered on July 10, 2019. Details: http://www.yummycupcakes.com/
          ----    
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

        # If there is any problem with the twilio server
        begin
          TwilioTextMessenger.new(message).call
        rescue #=> exception
          return nil
        end
      end

      #Removing contact > 2
      @contact.is_more?(@contact)

      respond_to do |format|
        flash.now[:success] = "Yeah"
        format.js 
        format.json { head :ok }
      end
    else  
      respond_to do |format|
        format.js { render :new }
        format.json { render json: @product.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:total_name, :email, :phone, :package_id, :header_click_type)
    end
end
