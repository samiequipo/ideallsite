class Pacotes::PacotesNowoController < ApplicationController
  before_action :render_pacotes, except: %i[index]
  
  def index  
  end
  
  #NW4
  def telemovel
  end

  #NW3
  def tv_net_voz
  end
  
  def outros
  end

  private

  def render_pacotes
    respond_to do |format|
      format.js { render partial: "pacotes/pacotes_nowo/#{params[:option]}" }
    end 
  end
end
