class Pacotes::PacotesMeoController < ApplicationController
  # puts request.original_url
  # puts request.path.split('/').last 
  before_action :render_pacotes, except: %i[index]
  
  def index
    @meo_packages = Type.find_by(plano: "Telemóvel", company: Company.find_by("description like ?", "%meo%")).packages
  end
  
  #M4
  def telemovel
  end
  
  #M3
  def tv_net_voz
  end
  
  def gaming
  end
  
  def outros
  end

  private

  def render_pacotes
    respond_to do |format|
      format.js { render partial: "pacotes/pacotes_meo/#{params[:option]}" }
    end 
  end
end