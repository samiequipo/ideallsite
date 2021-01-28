class Pacotes::PacotesMeoController < ApplicationController
  def index
  
  end
  
  #M4
  def telemovel
    respond_to do |format|
      format.js { render partial: 'pacotes/pacotes_meo/telemovel' }
    end   
  end
  
  #M3
  def tv_net_voz
    respond_to do |format|
      format.js { render partial: 'example/nos_m4' }
    end   
  end
  
  def gaming
  
  end
  def outros
  
  end
end