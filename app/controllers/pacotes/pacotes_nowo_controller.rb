class Pacotes::PacotesNowoController < ApplicationController
  before_action :getting_packages
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

  def getting_packages
    @nowo_packages = Company.fourth.types
  end
end
