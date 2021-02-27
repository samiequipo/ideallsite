class SocialContactsController < ApplicationController
  # Somebody click to phone button
  def create
    click_type = params[:type]  

    current_visit.update("#{click_type}": true)

    send(params[:type])
  end
  
  private
    def pc_phone
      redirect_to "tel:+351912486630"
    end

    def whatsapp
      redirect_to "https://web.whatsapp.com/send?phone=351912486630"
    end
    
    # whatsapp mobil
    def mobil_phone
      redirect_to "https://wa.me/351912486630"
    end
end