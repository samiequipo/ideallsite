class Pacotes::PacotesVodafoneController < ApplicationController
  before_action :getting_packages
  before_action :render_pacotes, except: %i[index]
  
  def index
  end
  
  #V4
  def telemovel
  end
  
  #V3
  def tv_net_voz
  end
  
  def net
  end
  
  def outros
  end

  private

  def render_pacotes
    respond_to do |format|
      format.js { render partial: "pacotes/pacotes_vodafone/#{params[:option]}" }
    end 
  end

  def getting_packages
    @vodafone_packages = Company.third.types
  end
end
