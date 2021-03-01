class Pacotes::PacotesMeoController < ApplicationController
  # puts request.original_url
  # puts request.path.split('/').last 
  before_action :getting_packages
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

    def getting_packages
      @meo_packages = Company.first.types
    end
end