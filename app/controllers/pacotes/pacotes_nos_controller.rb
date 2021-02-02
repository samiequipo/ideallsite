class Pacotes::PacotesNosController < ApplicationController
  before_action :render_pacotes, except: %i[index]
  
  def index
  end
  
  #N4
  def telemovel
  end
  
  #N3
  def tv_net_voz
  end
  
  def net
  end
  
  #N2
  def outros
  end

  private

  def render_pacotes
    respond_to do |format|
      format.js { render partial: "pacotes/pacotes_nos/#{params[:option]}" }
    end 
  end
end
