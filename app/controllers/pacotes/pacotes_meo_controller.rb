class Pacotes::PacotesMeoController < ApplicationController
  before_action :render_pacotes, except: %i[index]
  
  def index
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