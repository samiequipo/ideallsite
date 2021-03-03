class PromoController < ApplicationController
# puts request.original_url
# puts request.path.split('/').last 
  before_action :getting_packages
  before_action :render_promotion

  def promo_meo
  end
  
  def promo_nos
  end
  
  def promo_vodafone
  end
  
  def promo_nowo
  end
  
  private
    def render_promotion
      respond_to do |format|
        format.js { render partial: "pages/promotions/#{params[:option]}" }
      end 
    end
  
    def getting_packages
      @type = Type.where(plano: "Telemóvel")
      @meo_packages = Company.first.types
    end
end
