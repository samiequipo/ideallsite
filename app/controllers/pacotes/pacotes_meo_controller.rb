class Pacotes::PacotesMeoController < ApplicationController
  def index  
  end
  
  #M4
  def tv_net_voz
    respond_to do |format|
      format.js { render partial: 'pacotes/pacotes_meo/tv_net_voz' }
    end 
  end

  #M3
  def telemovel
    respond_to do |format|
      format.js { render partial: 'pacotes/pacotes_meo/telemovel' }
    end   
  end
  
  
  def gaming
    respond_to do |format|
      format.js { render partial: 'pacotes/pacotes_meo/gaming' }
    end   
  end
  
  def outros
    respond_to do |format|
      format.js { render partial: 'pacotes/pacotes_meo/outros' }
    end
  end
end